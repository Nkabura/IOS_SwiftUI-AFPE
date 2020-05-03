//
//  ProductCartRow.swift
//  MySwiftUI
//
//  Created by Sengsathit on 03/05/2020.
//  Copyright © 2020 Sengsathit. All rights reserved.
//

import SwiftUI

struct ProductCartRow: View {
    
    var product: Product
    
    var body: some View {
        HStack {
            Image(product.imageName).resizable().scaledToFit().frame(width:100)
            Text(product.name)
            Spacer()
            Text(String(format: "%.2f € x \(product.quantity)", product.price))
        }
    }
}

struct ProductCartRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductCartRow(product: Product(imageName: "tomato", name: "Tomate", quantity: 0, price: 0.20))
    }
}
