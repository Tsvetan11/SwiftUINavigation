//
//  SheetCoordinator.swift
//  NvigationControllerExample
//
//  Created by Tsvetan Tsvetanov on 8.03.23.
//

import Foundation

class SheetCoordinator: Coordinator {

    weak var parent: MainCoordinator?

    override func start() {
        let lemonView = LemonView(onDismiss: { [weak self] in
            self?.didTapDismiss()
        })

        let viewItem = NavigationItem(content: lemonView)
        let navigationItem = NavigationItem(content: NavigationControllerView(coordinator: self, root: viewItem))

        navigationController.present(sheet: navigationItem)
    }

    func didTapDismiss() {
        parent?.didTapLemonDismiss()
        parent?.childCoordinatorDidFinish(self)
    }
}
