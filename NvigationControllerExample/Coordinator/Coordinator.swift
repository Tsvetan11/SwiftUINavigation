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

    func start() {}

    func childCoordinatorDidFinish(_ childCoordinator: Coordinator) {
        guard let index = childCoordinators.firstIndex(where: { $0 === childCoordinator }) else { return }
        childCoordinators.remove(at: index)
    }
}
