//
//  Product.swift
//  MySwiftUI
//
//  Created by Sengsathit on 03/05/2020.
//  Copyright © 2020 Sengsathit. All rights reserved.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var imageName: String
    var name: String
    var quantity: Int
    var price: Double
}
