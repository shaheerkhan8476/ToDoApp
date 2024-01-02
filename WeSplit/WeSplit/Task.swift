//
//  TaskModel.swift
//  WeSplit
//
//  Created by Shaheer Khan on 1/1/24.
//

import Foundation
import SwiftUI
import SwiftData

@Model //checks to see when an object has changed its properties and notifies the view
class Task: Identifiable {
     var isChecked: Bool
     var name: String
    var id: UUID = UUID()
    var tags: [Tag]
    init(isChecked: Bool, name: String, tags: [Tag]) {
        self.isChecked = isChecked
        self.name = name
        self.tags = tags
    }
    
}
