//
//  TodoAppApp.swift
//  TodoApp
//
//  Created by Thạch Lâm Lê on 28/11/2022.
//

import SwiftUI

@main
struct TodoAppApp: App {
    @StateObject private var todos = TodoController(todos: fakeData)
    var body: some Scene {
        WindowGroup {
            MainScreen()
                .environmentObject(todos)
        }
    }
}
