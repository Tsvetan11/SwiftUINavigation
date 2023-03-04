//
//  NvigationControllerExampleApp.swift
//  NvigationControllerExample
//
//  Created by Tsvetan Tsvetanov on 4.03.23.
//

import SwiftUI

@main
struct NvigationControllerExampleApp: App {

    var body: some Scene {
        WindowGroup {
           NavigationControllerView(root: NavigationItem(content: AppleView()))
        }
    }
}
