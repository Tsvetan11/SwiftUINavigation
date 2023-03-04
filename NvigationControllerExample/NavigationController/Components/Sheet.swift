//
//  Sheet.swift
//  NvigationControllerExample
//
//  Created by Tsvetan Tsvetanov on 4.03.23.
//

import Foundation

enum Sheet: String, Identifiable {
    case lemon

    var id: String {
        self.rawValue
    }
}
