//
//  Page.swift
//  NvigationControllerExample
//
//  Created by Tsvetan Tsvetanov on 4.03.23.
//

import Foundation

enum Page: String, Identifiable {
    case apple
    case banana
    case carrot

    var id: String {
        self.rawValue
    }
}
