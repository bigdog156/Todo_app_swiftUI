//
//  EditSheet.swift
//  TodoApp
//
//  Created by Thạch Lâm Lê on 29/11/2022.
//

import SwiftUI

struct EditTodoSheet: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var controller: TodoController
    @Binding var todo: TodoModel
    
    var body: some View {
        VStack (alignment: .leading){
            Text("Edit Todo")
                .font(.title)
                .padding(.top, 40)
            TextField(text: $todo.title){
                Text("Title ...")
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(.gray.opacity(0.2))
            .cornerRadius(8)
            
            TextEditor(text: $todo.content )
                .padding(.horizontal, 5)
                .font(.custom("HelveticaNeue", size: 13))
                .frame(width: 360, height: 200)
                .border(.blue)
            
            Button {
                print("Edit todo")
                controller.updateTodo(id: todo.id, title: todo.title, content: todo.content)
                dismiss()
            } label: {
                Text("Update")
                    .foregroundColor(.white)
                    .bold()
                    .frame(width: 360, height: 50)
                    .background(.primary)
                    .cornerRadius(9)
            }
            Spacer()

        }.padding()
        
    }
}

struct EditTodoSheet_Previews: PreviewProvider {

    static var previews: some View {
        EditTodoSheet(todo: .constant(TodoModel(id: 0, title: "Title Demo", content: "Content demo ... ")))
    }
}
