//
//  Item.swift
//  Estatio
//
//  Created by Kurt Wimmers on 3/20/24.
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
