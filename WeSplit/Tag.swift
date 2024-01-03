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
class Tag: Identifiable {
    var name: String
    init(name: String) {
        self.name = name
        
    }
}

