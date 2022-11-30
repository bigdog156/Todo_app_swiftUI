//
//  TodoController.swift
//  TodoApp
//
//  Created by Thạch Lâm Lê on 29/11/2022.
//

import Foundation

class TodoController : ObservableObject{
    
    @Published var todos : [TodoModel]
    
    init(todos: [TodoModel]) {
        self.todos = todos
    }
    
    func addTodo(title: String, content: String){
        let data: TodoModel = TodoModel(id: Int.random(in: 1...1000), title: title, content: content)
        self.todos.append(data)
    }
}
