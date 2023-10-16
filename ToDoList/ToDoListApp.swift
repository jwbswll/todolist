//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Jack Boswell on 16/10/23.
//

import SwiftUI
import FirebaseCore

@main
struct ToDoListApp: App {
    
    init() {
        FirebaseApp.configure();
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
