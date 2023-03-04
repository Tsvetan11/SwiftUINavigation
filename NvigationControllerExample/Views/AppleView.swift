//
//  AppleView.swift
//  NvigationControllerExample
//
//  Created by Tsvetan Tsvetanov on 4.03.23.
//

import SwiftUI

struct AppleView: View {

    @EnvironmentObject private var coordinator: MainCoordinator

    var body: some View {
        List {
            Button("Push 🍌") {
                coordinator.didTapBanana()
            }

            Button("Present 🍋") {
                coordinator.didTapLemon()
            }

            Button("Present 🫒") {
                coordinator.didTapOlive()
            }
        }
        .navigationTitle("🍎")
    }
}
