//
//  Tag.swift
//  WeSplit
//
//  Created by Shaheer Khan on 1/1/24.
//

import Foundation
import Foundation
import SwiftUI
import SwiftData
@Model
class Task: Identifiable {
    var isChecked: Bool
    var name: String
    
    var tags: [Tag]
    init(isChecked: Bool, name: String, tags: [Tag]) {
        self.isChecked = isChecked
        self.name = name
        self.tags = tags
    }
}

