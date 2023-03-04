//
//  NvigationControllerExampleApp.swift
//  NvigationControllerExample
//
//  Created by Tsvetan Tsvetanov on 4.03.23.
//

import SwiftUI

@main
struct NvigationControllerExampleApp: App {

    private let pageFactory = PageFactory()
    private let sheetFactory = SheetFactory()
    private let fullScreenCoverFactory = FullScreenCoverFactory()

    var body: some Scene {
        WindowGroup {
            NavigationControllerView(
                root: .apple,
                pageFactory: pageFactory,
                sheetFactory: sheetFactory,
                fullScreenCoverFactory: fullScreenCoverFactory
            )
        }
    }
}
