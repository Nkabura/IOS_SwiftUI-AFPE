//
//  ProductRow.swift
//  MySwiftUI
//
//  Created by Sengsathit on 03/05/2020.
//  Copyright © 2020 Sengsathit. All rights reserved.
//

import SwiftUI

struct ProductRow: View {
    
    var product: Product
    // TODO : Déclarer une variable "cart" de type "Cart"
    // cette variable fait référence au panier stocké dans l'environnement de l'application
    
    var body: some View {
        HStack {
            Image(product.imageName).resizable().scaledToFit().frame(width:100)
            Text(product.name)
            Spacer()
            HStack {
                Image(systemName: "minus.circle.fill").onTapGesture {
                    self.removeFromCart()
                }
                Text("\(product.quantity)").font(.system(size: 20)).fontWeight(.bold)
                Image(systemName: "plus.circle.fill").onTapGesture {
                    self.addToCart()
                }
            }
        }
    }
    
    func removeFromCart() {
        // TODO : Faire une boucle qui :
        // - permet de parcourir les produits du panier (cart.products)
        // - permet de mettre à jour les quantités du produit concerné (cart.products[i].quantity),
        // pour faire simple le produit concerné est retrouvé grâce à son nom (cart.products[i].name)
        // - ATTENTION : VERIFIER LA QUANTITE AVANT DE RETIRER UNE QUANTITE, CELLE-CI NE DOIT PAS ETRE INFERIEURE A 0
    }
    
    func addToCart() {
        // TODO : Faire une boucle qui :
        // - permet de parcourir les produits du panier (cart.products)
        // - permet de mettre à jour les quantités du produit concerné (cart.products[i].quantity),
        // pour faire simple le produit concerné est retrouvé grâce à son nom (cart.products[i].name)
    }
}

struct ProductRow_Previews: PreviewProvider {
    
    static var previews: some View {
        ProductRow(product: Product(imageName: "tomato", name: "Tomate", quantity: 0, price: 0.20))
    }
}
