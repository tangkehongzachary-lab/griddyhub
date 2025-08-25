//
//  Item.swift
//  griddyhub
//
//  Created by Zachary Tang on 25/8/25.
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
