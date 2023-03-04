//
//  SheetFactory.swift
//  NvigationControllerExample
//
//  Created by Tsvetan Tsvetanov on 4.03.23.
//

import SwiftUI

struct SheetFactory {

    @ViewBuilder
    func view(for sheet: Sheet) -> some View {
        switch sheet {
        case .lemon:
            LemonView()
        }
    }
}
