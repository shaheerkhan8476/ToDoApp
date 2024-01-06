    //
    //  ContentView.swift
    //  WeSplit
    //
    //  Created by Shaheer Khan on 12/28/23.
    //

    import SwiftUI
    import SwiftData


struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @State private var searchText = ""
    @Query private var tasks: [Task] = []
    @Query private var tags: [Tag] = []
    var searchResults: [Task] {
        if searchText.isEmpty {
            return tasks
        } else {
            return tasks.filter { $0.name.contains(searchText) }
        }
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(searchResults) { task in
                    TaskView(task: task)
                }
                
                .searchable(text: $searchText, prompt: "Find a Task")
                .navigationTitle("ToDo List")
                .navigationBarTitleDisplayMode(.inline)
            }

            Button(action: {
                modelContext.insert(Task(isChecked: false, name: "", tags: [Tag(name: "Test")]))
            }, label: {
                Text("Add Task")
            })
        }
    }

}

// Preview



    #Preview {
        
        ContentView()
            
    }
