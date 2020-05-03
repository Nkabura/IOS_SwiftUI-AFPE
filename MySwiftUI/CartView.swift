//
//  CartView.swift
//  MySwiftUI
//
//  Created by Sengsathit on 03/05/2020.
//  Copyright © 2020 Sengsathit. All rights reserved.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cart: Cart
    
    var body: some View {
        VStack {
            List(cart.products) { product in
                ProductCartRow(product: product)
            }
            Spacer()
            Text(String(format: "Total : %.2f €", caculate())).fontWeight(.bold).frame(width: 300).padding().background(Color.blue).foregroundColor(.white).cornerRadius(8)

        }.navigationBarTitle("Panier")
    }
    
    func caculate() -> Double {
        var total = 0.0
        
        cart.products.forEach { product in
            total += Double(product.quantity) * product.price
        }
        
        return total
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
