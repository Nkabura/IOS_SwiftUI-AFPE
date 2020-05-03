//
//  Cart.swift
//  MySwiftUI
//
//  Created by Sengsathit on 03/05/2020.
//  Copyright © 2020 Sengsathit. All rights reserved.
//

import Foundation

class Cart: ObservableObject {
    @Published var products = [Product]()
    
    init(){
        let salads = Product(imageName: "salad", name: "Salade", quantity: 0, price: 1.10)
        let tomatoes = Product(imageName: "tomato", name: "Tomate", quantity: 0, price: 0.80)
        let oinions = Product(imageName: "oinion", name: "Oignon", quantity: 0, price: 0.20)
        products.append(contentsOf: [salads, tomatoes, oinions])
    }
}
