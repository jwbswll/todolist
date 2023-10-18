//
//  todolistApp.swift
//  todolist
//
//  Created by Jack Boswell on 18/10/23.
//

import SwiftUI
import Firebase

@main
struct todolistApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
