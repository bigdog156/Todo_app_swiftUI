//
//  AddTodoSheet.swift
//  TodoApp
//
//  Created by Thạch Lâm Lê on 29/11/2022.
//

import SwiftUI

struct AddTodoSheet: View {
    @Environment(\.dismiss) var dismiss

    @EnvironmentObject var controller : TodoController
    @State var title: String = ""
    @State var content: String = ""
    var body: some View {
        VStack(alignment: .leading){
            Text("Add Todo")
                .font(.title)
                .padding(.top, 40)
            TextField(text: $title, label: {Label("Todo ...", image: "highlighter")})
                .padding(10)
                .background(.gray.opacity(0.2))
                .cornerRadius(8)
            
            TextField(text: $content, label: {Label("Content ...", image: "highlighter")})
                .padding(10)
                .background(.gray.opacity(0.2))
                .cornerRadius(8)
            
            Button {
                print("Add Todo ...")
                controller.addTodo(title: title, content: content)
                dismiss()
            } label: {
                Text("Add")
                    .bold()
                    .frame(width: 360, height: 50)
                    .background(.thinMaterial)
                    .cornerRadius(9)
            }
            Spacer()
            
        }
        .padding(.horizontal, 16)
    }
}

struct AddTodoSheet_Previews: PreviewProvider {
    static var previews: some View {
        AddTodoSheet()
    }
}
