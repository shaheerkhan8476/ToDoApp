//
//  Filter.swift
//  WeSplit
//
//  Created by Shaheer Khan on 1/4/24.
//

import Foundation
import Foundation
import SwiftUI
import SwiftData
@Model
class Filter: Identifiable {
    var name: String
    init(name: String, id: UUID = UUID()) {
        self.name = name
       
    }
}

