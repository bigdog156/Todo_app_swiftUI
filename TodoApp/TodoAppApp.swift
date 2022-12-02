//
//  TodoAppApp.swift
//  TodoApp
//
//  Created by Thạch Lâm Lê on 28/11/2022.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}

@main
struct TodoAppApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject private var todos = TodoController(todos: fakeData)
    var body: some Scene {
        WindowGroup {
            TabView{
                MainScreen()
                    .environmentObject(todos)
                    .tabItem {
                        Label("Home", systemImage: "homekit")
                    }
                AuthScreen()
                    .tabItem {
                        Label("Setting", systemImage: "gear")
                    }

            }
            
        }
    }
}
