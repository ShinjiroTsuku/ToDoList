//
//  ContentView.swift
//  ToDoList
//
//  Created by 佃真次郎 on 2025/05/02.
//

import SwiftUI

struct ContentView: View {
    @State var taskData = [(title: "jog", completed: false),
                           (title: "water flowers", completed: false),
                           (title: "clean room", completed: false),
                           (title: "read a book", completed: false)]
    var body: some View {
        NavigationStack {
            List(0..<taskData.count, id:\.self) {index in
                Button {
                    taskData[index].completed.toggle()
                } label: {
                    HStack {
                        Image(systemName: taskData[index].completed ? "circle" : "checkmark.circle.fill")
                        Text(taskData[index].title)
                    }
                }
                .foregroundColor(.black)
            }
            .navigationTitle("ToDoList")
        }
    }
}

#Preview {
    ContentView()
}
