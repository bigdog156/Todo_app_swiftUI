//
//  TodoDetail.swift
//  TodoApp
//
//  Created by Thạch Lâm Lê on 28/11/2022.
//

import SwiftUI

struct TodoDetail: View {
    @State var todo : TodoModel
    @State var isEdit : Bool = false
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(todo.title)
                    .font(.headline)
                Spacer()
            }
            Text(todo.content)
            Spacer()
        }
        .toolbar(content: {
            Button {
                // TODO: Edit todo
                isEdit.toggle()
            } label: {
                Image(systemName: "highlighter")
            }

        })
        .sheet(isPresented: $isEdit, content: {
            EditTodoSheet(todo: $todo)
        })
        .padding(.horizontal, 16)
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle(todo.title)
    }
}

struct TodoDetail_Previews: PreviewProvider {
    static var previews: some View {
        TodoDetail(todo: fakeData[1])
    }
}
