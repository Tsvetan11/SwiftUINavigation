//
//  AppleView.swift
//  NvigationControllerExample
//
//  Created by Tsvetan Tsvetanov on 4.03.23.
//

import SwiftUI

struct AppleView: View {

    @EnvironmentObject private var navigationController: NavigationController

    var body: some View {
        List {
            Button("Push 🍌") {
                navigationController.push(.banana)
            }

            Button("Present 🍋") {
                navigationController.present(sheet: .lemon)
            }

            Button("Present 🫒") {
                navigationController.present(fullScreenCover: .olive)
            }
        }
        .navigationTitle("🍎")
    }
}
