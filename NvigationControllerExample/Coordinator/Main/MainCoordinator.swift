//
//  MainCoordinator.swift
//  NvigationControllerExample
//
//  Created by Tsvetan Tsvetanov on 8.03.23.
//

import Foundation

class MainCoordinator: Coordinator {

    func didTapBanana() {
        let bananaView = BananaView(pop: { [weak self] in
            self?.didTapBananaPop()
        })
        navigationController.push(NavigationItem(content: bananaView))
    }

    func didTapBananaPop() {
        navigationController.pop()
    }

    func didTapLemon() {
        let childCoordinator = SheetCoordinator(navigationController: navigationController)
        childCoordinators.append(childCoordinator)
        childCoordinator.parent = self
        childCoordinator.start()
    }

    func didTapOlive() {
        let childCoordinator = FullScreenCoverCoordinator(navigationController: navigationController)
        childCoordinators.append(childCoordinator)
        childCoordinator.parent = self
        childCoordinator.start()
    }

    func didTapLemonDismiss() {
        navigationController.dismissSheet()
    }

    func didTapOliveDismiss() {
        navigationController.dismissFullScreenCover()
    }
}
