//
//  FullScreenCoverFactory.swift
//  NvigationControllerExample
//
//  Created by Tsvetan Tsvetanov on 4.03.23.
//

import SwiftUI

struct FullScreenCoverFactory {

    @ViewBuilder
    func view(for fullScreenCover: FullScreenCover) -> some View {
        switch fullScreenCover {
        case .olive:
            OliveView()
        }
    }
}
