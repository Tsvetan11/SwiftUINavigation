//
//  NavigationControllerView.swift
//  NvigationControllerExample
//
//  Created by Tsvetan Tsvetanov on 4.03.23.
//

import SwiftUI

struct NavigationControllerView: View {

    @ObservedObject private var coordinator: Coordinator
    private let root: NavigationItem

    init(coordinator: MainCoordinator, root: NavigationItem) {
        self._coordinator = ObservedObject(wrappedValue: coordinator)
        self.root = root
    }

    var body: some View {
        NavigationStack(path: $coordinator.navigationController.navigationPath) {
            root.getView()
                .navigationDestination(for: NavigationItem.self) { destination in
                    destination.getView()
                }
        }
        .sheet(item: $coordinator.navigationController.sheet) { sheet in
            sheet.getView()
        }
        .fullScreenCover(item: $coordinator.navigationController.fullScreenCover) { fullScreenCover in
            fullScreenCover.getView()
        }
        .environmentObject(coordinator)
    }
}
