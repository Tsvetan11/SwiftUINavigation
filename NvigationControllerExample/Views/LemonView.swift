//
//  LemonView.swift
//  NvigationControllerExample
//
//  Created by Tsvetan Tsvetanov on 4.03.23.
//

import SwiftUI

struct LemonView: View {
    
    @EnvironmentObject private var coordinator: MainCoordinator
    
    var body: some View {
        List {
            Button("Dismiss") {
                coordinator.didTapLemonDismiss()
            }
        }
        .navigationTitle("🍋")
    }
}
