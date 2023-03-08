//
//  AppleView.swift
//  NvigationControllerExample
//
//  Created by Tsvetan Tsvetanov on 4.03.23.
//

import SwiftUI

struct AppleView: View {

    let didTapBanana: () -> Void
    let didTapLemon: () -> Void
    let didTapOlive: () -> Void

    var body: some View {
        List {
            Button("Push 🍌") {
                didTapBanana()
            }

            Button("Present 🍋") {
                didTapLemon()
            }

            Button("Present 🫒") {
                didTapOlive()
            }
        }
        .navigationTitle("🍎")
    }
}
