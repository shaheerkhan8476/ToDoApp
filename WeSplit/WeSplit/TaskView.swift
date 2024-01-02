//
//  TaskModel.swift
//  WeSplit
//
//  Created by Shaheer Khan on 1/1/24.
//

import Foundation
import SwiftUI
struct TaskView: View {
    @Bindable var task: Task
    @State private var userInput: String = ""
    var body: some View {
        
        HStack{
            Button {
                task.isChecked = !task.isChecked
            } label: {
                if task.isChecked{
                    Image(systemName: "checkmark.square")
                }
                else {
                    Image(systemName: "square")
                }
            }
            Divider()
            VStack{
                
                TextField("Enter Your Task", text: $task.name)
                
                HStack{
                    Button(action: {
                        if task.tags.count <= 2 {
                            let newTag = Tag(name: userInput)
                            task.tags.append(newTag)
                            userInput = ""
                        }
                    }, label: {
                        Text("Hello")
                    })
                    if task.tags.count > 0 {
                        
                        ForEach (task.tags) { tag in
                        ZStack{
                            
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.secondary.opacity(0.5))
                                Text(tag.name)
                                Divider()
                            }
                            
                        }
                    }
                }
            }
        }
        .padding()
        
        
        
    
    }
}

#Preview {
    @State var taskobject = Task(isChecked: false, name: "", tags: [])
    
    return TaskView(task: taskobject)
}
