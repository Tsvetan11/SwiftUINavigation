//
//  BananaView.swift
//  NvigationControllerExample
//
//  Created by Tsvetan Tsvetanov on 4.03.23.
//

import SwiftUI

struct BananaView: View {

    @EnvironmentObject private var navigationController: NavigationController

    var body: some View {
        List {
            Button("Push 🥕") {
                navigationController.push(.carrot)
            }

            Button("Pop") {
                navigationController.pop()
            }
        }
        .navigationTitle("🍌")
    }
}
