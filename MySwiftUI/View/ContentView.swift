//
//  ContentView.swift
//  MySwiftUI
//
//  Created by Sengsathit on 02/05/2020.
//  Copyright © 2020 Sengsathit. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = UserViewModel()
    
    var body: some View {
        NavigationView {
            List{
                ForEach(viewModel.users) { user in
                    HStack {
                        Text(user.name)
                        Text("\(user.age) ans")
                        Spacer()
                        if self.viewModel.isOfAge(user: user) {
                            Text("majeur").foregroundColor(.green)
                        } else {
                            Text("mineur").foregroundColor(.red)
                        }
                    }
                }
                .onDelete(perform: viewModel.deleteUsers)
            }
            .navigationBarTitle("Utilisateurs")
            .navigationBarItems(trailing: EditButton())
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// TODO-7 : Challenge!!! -> Rendre possible l'ajout d'un utilsateur en demandant son nom et son âge. L'utilisateur doit apparaître dans la liste suite à l'ajout
