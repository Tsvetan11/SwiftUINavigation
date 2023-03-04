//
//  NavigationControllerView.swift
//  NvigationControllerExample
//
//  Created by Tsvetan Tsvetanov on 4.03.23.
//

import SwiftUI

struct NavigationControllerView: View {

    @StateObject private var navigationController = NavigationController()
    
    private let root: Page
    private let pageFactory: PageFactory
    private let sheetFactory: SheetFactory
    private let fullScreenCoverFactory: FullScreenCoverFactory

    init(
        root: Page,
        pageFactory: PageFactory,
        sheetFactory: SheetFactory,
        fullScreenCoverFactory: FullScreenCoverFactory
    ) {
        self.root = root
        self.pageFactory = pageFactory
        self.sheetFactory = sheetFactory
        self.fullScreenCoverFactory = fullScreenCoverFactory
    }

    var body: some View {
        NavigationStack(path: $navigationController.navigationPath) {
            pageFactory.view(for: root)
                .navigationDestination(for: Page.self) { page in
                    pageFactory.view(for: page)
                }
        }
        .sheet(item: $navigationController.sheet) { sheet in
            sheetFactory.view(for: sheet)
        }
        .fullScreenCover(item: $navigationController.fullScreenCover) { fullScreenCover in
            fullScreenCoverFactory.view(for: fullScreenCover)
        }
        .environmentObject(navigationController)
    }
}
