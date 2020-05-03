//
//  CartView.swift
//  MySwiftUI
//
//  Created by Sengsathit on 03/05/2020.
//  Copyright © 2020 Sengsathit. All rights reserved.
//

import SwiftUI

struct CartView: View {
    
    // TODO : Déclarer une variable "cart" de type "Cart"
    // cette variable fait référence au panier stocké dans l'environnement de l'application
    
    var body: some View {
        VStack {
            // TODO : Faire une liste pour afficher les produits du panier en utilisant la custom view "ProductCartRow"
            Spacer()
            Text(String(format: "Total : %.2f €", caculate())).fontWeight(.bold).frame(width: 300).padding().background(Color.blue).foregroundColor(.white).cornerRadius(8)

        }.navigationBarTitle("Panier")
    }
    
    func caculate() -> Double {
        var total = 0.0
        
        // TODO : Calculer le prix tu panier
        
        return total
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
