//
//  Item.swift
//  test_ios_app_switft
//
//  Created by Jonathas Rangel on 20/06/2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
