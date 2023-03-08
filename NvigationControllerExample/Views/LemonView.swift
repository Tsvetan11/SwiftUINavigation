//
//  LemonView.swift
//  NvigationControllerExample
//
//  Created by Tsvetan Tsvetanov on 4.03.23.
//

import SwiftUI

struct LemonView: View {
    
    let onDismiss: () -> Void
    
    var body: some View {
        List {
            Button("Dismiss") {
                onDismiss()
            }
        }
        .navigationTitle("🍋")
    }
}
