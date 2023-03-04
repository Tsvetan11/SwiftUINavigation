//
//  NavigationController.swift
//  NvigationControllerExample
//
//  Created by Tsvetan Tsvetanov on 4.03.23.
//

import SwiftUI

final class NavigationController: ObservableObject {

    @Published var navigationPath = NavigationPath()
    @Published var sheet: NavigationItem?
    @Published var fullScreenCover: NavigationItem?

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
        self.sheet = sheet
    }

    func dismissSheet() {
        sheet = nil
    }

    func present(fullScreenCover: NavigationItem) {
        self.fullScreenCover = fullScreenCover
    }

    func dismissFullScreenCover() {
        fullScreenCover = nil
    }
}
