//
//  UserViewModel.swift
//  MySwiftUI
//
//  Created by Sengsathit on 04/05/2020.
//  Copyright © 2020 Sengsathit. All rights reserved.
//

import Foundation

class UserViewModel: ObservableObject {
    
    @Published var users = [
        User(name: "Pierre", age: 23),
        User(name: "Paul", age: 16),
        User(name: "Jacques", age: 46)
    ]
    
    // Permet de vérifier la majorité d'un utilisateur
    func isOfAge(user: User) -> Bool {
        return user.age > 18
    }
    
    // Permet de supprimer un utilisateur de la liste
    func deleteUsers(at offsets: IndexSet) {
        for index in offsets {
            users.remove(at: index)
        }
    }
}
