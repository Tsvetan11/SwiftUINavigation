//
//  Coordinator.swift
//  NvigationControllerExample
//
//  Created by Tsvetan Tsvetanov on 4.03.23.
//

import Foundation

class Coordinator: ObservableObject {

    @Published var navigationController: NavigationController

    var childCoordinators = [Coordinator]()

    init(navigationController: NavigationController) {
        self.navigationController = navigationController
    }
}

class MainCoordinator: Coordinator {

    func didTapBanana() {
        navigationController.push(NavigationItem(content: BananaView()))
    }

    func didTapLemon() {
        navigationController.present(sheet: NavigationItem(content: LemonView()))
    }

    func didTapOlive() {
        navigationController.present(fullScreenCover: NavigationItem(content: OliveView()))
    }

    func didTapCarrot() {
        navigationController.push(NavigationItem(content: CarrotView()))
    }

    func didTapBananaPop() {
        navigationController.pop()
    }

    func didTapCarrotPop() {
        navigationController.pop()
    }

    func didTapCarrotPopToRoot() {
        navigationController.popToRoot()
    }

    func didTapLemonDismiss() {
        navigationController.dismissSheet()
    }

    func didTapOliveDismiss() {
        navigationController.dismissFullScreenCover()
    }
}
