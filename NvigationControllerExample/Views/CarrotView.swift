//
//  CarrotView.swift
//  NvigationControllerExample
//
//  Created by Tsvetan Tsvetanov on 4.03.23.
//

import SwiftUI

struct CarrotView: View {

    @EnvironmentObject private var coordinator: MainCoordinator

    var body: some View {
        List {
            Button("Pop") {
                coordinator.didTapCarrotPop()
            }

            Button("Pop to root") {
                coordinator.didTapCarrotPopToRoot()
            }
        }
        .navigationTitle("🥕")
    }
}
