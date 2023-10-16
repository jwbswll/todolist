//
//  User.swift
//  ToDoList
//
//  Created by Jack Boswell on 16/10/23.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
