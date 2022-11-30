//
//  MainScreen.swift
//  TodoApp
//
//  Created by Thạch Lâm Lê on 28/11/2022.
//

import SwiftUI

struct MainScreen: View {
    @EnvironmentObject var controller: TodoController
    @State var isShowSheet: Bool = false
    var body: some View {
        NavigationStack {
            List{
                ForEach($controller.todos){ item in
                    NavigationLink {
                        TodoDetail(todo: item.wrappedValue)
                    } label: {
                        Text(item.wrappedValue.title)
                    }
                    
                }
            }
            .navigationTitle("Todo App")
            .toolbar {
                Button {
                    isShowSheet.toggle()
                } label: {
                    Image(systemName: "plus.circle")
                }
                
            }
            .sheet(isPresented: $isShowSheet, content: {
                AddTodoSheet()
            }
            )
            .onChange(of: isShowSheet) { show in
                isShowSheet = show
            }
        }
        
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
            .environmentObject(TodoController(todos: fakeData))
    }
}
