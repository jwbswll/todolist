//
//  ToDoListItemViewViewModel.swift
//  todolist
//
//  Created by Jack Boswell on 18/10/23.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

class ToDoListItemViewViewModel: ObservableObject {
    
    
    init() {}
    
    func toggleIsDone(item: ToDoListItem) {
        var itemClone = item
        itemClone.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemClone.id)
            .setData(itemClone.asDictionary())
    }
}
