//
//  ContentView.swift
//  MySwiftUI
//
//  Created by Sengsathit on 02/05/2020.
//  Copyright © 2020 Sengsathit. All rights reserved.
//

import SwiftUI

struct ProductsView: View {
    
    @EnvironmentObject var cart: Cart
    
    var body: some View {
        NavigationView {
            VStack {
                List(cart.products) { product in
                    ProductRow(product: product)
                }
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
