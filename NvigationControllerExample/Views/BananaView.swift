//
//  BananaView.swift
//  NvigationControllerExample
//
//  Created by Tsvetan Tsvetanov on 4.03.23.
//

import SwiftUI

struct BananaView: View {

    let pop: () -> Void

    var body: some View {
        List {
            Button("Pop") {
                pop()
            }
        }
        .navigationTitle("🍌")
    }
}
