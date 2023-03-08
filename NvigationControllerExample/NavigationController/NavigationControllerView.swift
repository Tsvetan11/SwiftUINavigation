//
//  NavigationControllerView.swift
//  NvigationControllerExample
//
//  Created by Tsvetan Tsvetanov on 4.03.23.
//

import SwiftUI
import Combine

struct NavigationControllerView: View {

    @ObservedObject private var coordinator: Coordinator
    private let root: NavigationItem

    @State private var sheet: NavigationItem?
    @State private var fullScreenCover: NavigationItem?

    @State private var cancellables = Set<AnyCancellable>()
    @State private var isOnLoad = true

    init(coordinator: Coordinator, root: NavigationItem) {
        self._coordinator = ObservedObject(wrappedValue: coordinator)
        self.root = root
    }

    var body: some View {
        NavigationStack(path: $coordinator.navigationController.navigationPath) {
            root.view
                .navigationDestination(for: NavigationItem.self) { destination in
                    destination.view
                }
        }
        .sheet(item: $sheet) { sheet in
            sheet.view
        }
        .fullScreenCover(item: $fullScreenCover) { fullScreenCover in
            fullScreenCover.view
        }
        .onAppear {
            guard isOnLoad else { return }

            coordinator.navigationController.sheet
                .sink { sheet in
                    guard self.sheet?.id != sheet?.id else { return }
                    self.sheet = sheet
                }
                .store(in: &cancellables)

            coordinator.navigationController.fullScreenCover
                .sink { fullScreenCover in
                    guard self.fullScreenCover?.id != fullScreenCover?.id else { return }
                    self.fullScreenCover = fullScreenCover
                }
                .store(in: &cancellables)
        }
        .onDisappear {
            cancellables.removeAll()
        }
    }
}
