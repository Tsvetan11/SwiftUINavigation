//
//  FullScreenCoverCoordinator.swift
//  NvigationControllerExample
//
//  Created by Tsvetan Tsvetanov on 8.03.23.
//

import Foundation

class FullScreenCoverCoordinator: Coordinator {

    weak var parent: MainCoordinator?

    override func start() {
        let oliveView = OliveView { [weak self] in
            self?.didTapDismiss()
        }

        let viewItem = NavigationItem(content: oliveView)
        let navigationItem = NavigationItem(content: NavigationControllerView(coordinator: self, root: viewItem))

        navigationController.present(fullScreenCover: navigationItem)
    }

    func didTapDismiss() {
        parent?.didTapOliveDismiss()
        parent?.childCoordinatorDidFinish(self)
    }
}
