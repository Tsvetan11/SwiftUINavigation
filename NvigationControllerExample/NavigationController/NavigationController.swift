//
//  NavigationController.swift
//  NvigationControllerExample
//
//  Created by Tsvetan Tsvetanov on 4.03.23.
//

import SwiftUI
import Combine

final class NavigationController: ObservableObject {

    @Published var navigationPath = NavigationPath()
    
    private(set) var sheet = PassthroughSubject<NavigationItem?, Never>()
    private(set) var fullScreenCover = PassthroughSubject<NavigationItem?, Never>()

    func push(_ item: NavigationItem) {
        navigationPath.append(item)
    }

    func pop() {
        navigationPath.removeLast()
    }

    func popToRoot() {
        navigationPath.removeLast(navigationPath.count)
    }

    func present(sheet: NavigationItem) {
        self.sheet.send(sheet)
    }

    func dismissSheet() {
        sheet.send(nil)
    }

    func present(fullScreenCover: NavigationItem) {
        self.fullScreenCover.send(fullScreenCover)
    }

    func dismissFullScreenCover() {
        fullScreenCover.send(nil)
    }
}
