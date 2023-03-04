//
//  NavigationControllerView.swift
//  NvigationControllerExample
//
//  Created by Tsvetan Tsvetanov on 4.03.23.
//

import SwiftUI

struct NavigationControllerView: View {

    @StateObject private var navigationController: NavigationController = NavigationController()
    private let root: NavigationItem

    init(root: NavigationItem) {
        self.root = root
    }

    var body: some View {
        NavigationStack(path: $navigationController.navigationPath) {
            root.getView()
                .navigationDestination(for: NavigationItem.self) { destination in
                    destination.getView()
                }
        }
        .sheet(item: $navigationController.sheet) { sheet in
            sheet.getView()
        }
        .fullScreenCover(item: $navigationController.fullScreenCover) { fullScreenCover in
            fullScreenCover.getView()
        }
        .environmentObject(navigationController)
    }
}
