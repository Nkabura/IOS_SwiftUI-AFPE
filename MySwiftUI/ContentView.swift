//
//  ContentView.swift
//  MySwiftUI
//
//  Created by Sengsathit on 02/05/2020.
//  Copyright © 2020 Sengsathit. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    // TODO-2 : Créer un ViewModel pour y mettre à disposition des Views (écrans) la liste des utilisateurs
    @State var users = [
        User(name: "Pierre", age: 23),
        User(name: "Paul", age: 16),
        User(name: "Jacques", age: 46)
    ]
    
    var body: some View {
        NavigationView {
            List{
                // TODO-5 : Récupérer les users depuis le ViewModel
                ForEach(users) { user in
                    HStack {
                        Text(user.name)
                        Text("\(user.age) ans")
                        Spacer()
                        // TODO-6 : Appeler la fonction depuis le ViewModel
                        if self.isOfAge(user: user) {
                            Text("majeur").foregroundColor(.green)
                        } else {
                            Text("mineur").foregroundColor(.red)
                        }
                    }
                }
                // TODO-7 : Appeler la fonction depuis le ViewModel
                .onDelete(perform: deleteUsers)
            }
            .navigationBarTitle("Utilisateurs")
            .navigationBarItems(trailing: EditButton())
        }
    }
    
    // Permet de vérifier la majorité d'un utilisateur
    // TODO-3 : A déplacer dans le ViewModel
    func isOfAge(user: User) -> Bool {
        return user.age > 18
    }
    
    // Permet de supprimer un utilisateur de la liste
    // TODO-4 : A déplacer dans le ViewModel
    func deleteUsers(at offsets: IndexSet) {
        for index in offsets {
            users.remove(at: index)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// TODO-1 : Déplacer la struct User vers un fichier a part entière. Idéalement créer un Group pour accueillir ce fichier
struct User: Identifiable {
    var id = UUID()
    var name: String
    var age: Int
}


// TODO-8 : Challenge!!! -> Rendre possible l'ajout d'un utilsateur en demandant son nom et son âge. L'utilisateur doit apparaître dans la liste suite à l'ajout
