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
    
    func updateTodo(id: Int, title: String, content: String) {
        if let index = self.todos.firstIndex(where: {$0.id == id}){
            self.todos[index] = TodoModel(id: id, title: title, content: content)
            print(self.todos[index])
        }
    }
}
