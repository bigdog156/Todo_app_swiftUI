//
//  TodoModel.swift
//  TodoApp
//
//  Created by Thạch Lâm Lê on 28/11/2022.
//

import Foundation

struct TodoModel: Identifiable{
    let id: Int
    var title: String
    var content: String
    
    init(id: Int, title: String, content: String) {
        self.id = id
        self.title = title
        self.content = content
    }
}

let fakeData: [TodoModel] = [
    TodoModel(id: 0, title: "Learn State Management Flutter", content: "Using GetX state management flutter such as service, controller"),
    TodoModel(id: 1, title: "Learn Swift UI", content: "How to use the single source of truth and navigation in Swift UI"),
    TodoModel(id: 2, title: "Create MindMap for students", content: "Mindmap is awesome...")
]
