//
//  Item.swift
//  TestDatabase
//
//  Created by Raja Marwah on 3/12/2024.
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
