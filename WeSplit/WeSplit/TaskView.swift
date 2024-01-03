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
    @State private var addTag: Tag?
    @State var tags: [Tag] = []
    @State private var tagName: String = ""
    @State private var bgColor: Color = .red
    let setColor: Color = .red
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
                    ForEach(tags) { tag in
                        ZStack{
                            
                            Text(tag.name)
                                .padding(.horizontal, 10)
                                .padding(.vertical, 5)
                                .background(bgColor)
                                .foregroundColor(.white)
                                .font(.caption)
                                .cornerRadius(15)
                        }
                    }
                    
                }
                
                Button {
                    addTag = Tag(name: "Test")
                } label: {
                    Text("add tag")
                }
                .sheet(item: $addTag) { tag in
                    TextField("Enter your Tag Name", text:$tagName)
                        .padding()
                    ColorPicker("Pick a Color", selection: $bgColor)
                        .padding()
                    VStack {
                        Button {
                            let tag = Tag(name: tagName)
                            tags.append(tag)
                            addTag = nil
                                                    } label: {
                            Text("Save Tag")
                        }
                    }
                    .presentationDetents([.fraction(0.25)])
                    .padding()
                }
                
                
            }
            
        }
        
    }

    }


#Preview {
    @State var taskobject = Task(isChecked: false, name: "", tags: [])
    
    return TaskView(task: taskobject)
}
