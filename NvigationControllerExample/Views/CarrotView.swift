//
//  CarrotView.swift
//  NvigationControllerExample
//
//  Created by Tsvetan Tsvetanov on 4.03.23.
//

import SwiftUI

struct CarrotView: View {

    @EnvironmentObject private var navigationController: NavigationController

    var body: some View {
        List {
            Button("Pop") {
                navigationController.pop()
            }

            Button("Pop to root") {
                navigationController.popToRoot()
            }
        }
        .navigationTitle("🥕")
    }
}
