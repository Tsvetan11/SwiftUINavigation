//
//  BananaView.swift
//  NvigationControllerExample
//
//  Created by Tsvetan Tsvetanov on 4.03.23.
//

import SwiftUI

struct BananaView: View {

    @EnvironmentObject private var coordinator: MainCoordinator

    var body: some View {
        List {
            Button("Push 🥕") {
                coordinator.didTapCarrot()
            }

            Button("Pop") {
                coordinator.didTapBananaPop()
            }
        }
        .navigationTitle("🍌")
    }
}
