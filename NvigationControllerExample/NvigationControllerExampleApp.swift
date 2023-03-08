//
//  NvigationControllerExampleApp.swift
//  NvigationControllerExample
//
//  Created by Tsvetan Tsvetanov on 4.03.23.
//

import SwiftUI

@main
struct NvigationControllerExampleApp: App {

    @StateObject private var navigationController: NavigationController
    @StateObject private var mainCoordinator: MainCoordinator

    init() {
        let navigationController = NavigationController()

        self._navigationController = StateObject(wrappedValue: navigationController)
        self._mainCoordinator = StateObject(wrappedValue: MainCoordinator(navigationController: navigationController))
    }

    var body: some Scene {
        WindowGroup {
           NavigationControllerView(
            coordinator: mainCoordinator,
            root: NavigationItem(
                content: makeRootView()
            )
           )
        }
    }

    func makeRootView() -> some View {
        AppleView(
            didTapBanana: {
                mainCoordinator.didTapBanana()
            },
            didTapLemon: {
                mainCoordinator.didTapLemon()
            },
            didTapOlive: {
                mainCoordinator.didTapOlive()
            }
        )
    }
}
