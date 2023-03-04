//
//  NavigationItem.swift
//  NvigationControllerExample
//
//  Created by Tsvetan Tsvetanov on 4.03.23.
//

import SwiftUI

class NavigationItem: Hashable, Identifiable {

    private let view: AnyView

    var id: String {
        UUID().uuidString
    }

    init<Content>(content: Content) where Content: View {
        self.view = AnyView(content)
    }

    static func == (lhs: NavigationItem, rhs: NavigationItem) -> Bool {
        lhs.id == rhs.id
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    func getView() -> some View {
        view
    }
}
