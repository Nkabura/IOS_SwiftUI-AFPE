//
//  ContentView.swift
//  MySwiftUI
//
//  Created by Sengsathit on 02/05/2020.
//  Copyright © 2020 Sengsathit. All rights reserved.
//

import SwiftUI

struct ProductsView: View {
    
    // TODO : Déclarer une variable "cart" de type "Cart"
    // cette variable fait référence au panier stocké dans l'environnement de l'application
    
    var body: some View {
        NavigationView {
            VStack {
                // TODO : Faire une liste pour afficher les produits à mettre au panier en utilisant la custom view "ProductRow".
                // Pour faire simple, ces produits sont ceux du panier (variable "cart")
                Spacer()
                NavigationLink(destination: CartView(), label: {
                    Text("Voir mon panier").padding().background(Color.red).foregroundColor(.white).cornerRadius(8)
                })
            }.navigationBarTitle("Produits")
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView()
    }
}
