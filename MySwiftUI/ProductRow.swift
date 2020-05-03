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
    @EnvironmentObject var cart: Cart
    
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
        for i in 0..<cart.products.count {
            if cart.products[i].quantity > 0  && cart.products[i].name == product.name {
                cart.products[i].quantity -= 1
            }
        }
    }
    
    func addToCart() {
        for i in 0..<cart.products.count {
            if cart.products[i].name == product.name {
                cart.products[i].quantity += 1
            }
        }
    }
}

struct ProductRow_Previews: PreviewProvider {
    
    static var previews: some View {
        ProductRow(product: Product(imageName: "tomato", name: "Tomate", quantity: 0, price: 0.20))
    }
}
