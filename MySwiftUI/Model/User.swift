//
//  User.swift
//  MySwiftUI
//
//  Created by Sengsathit on 04/05/2020.
//  Copyright © 2020 Sengsathit. All rights reserved.
//

import Foundation

struct User: Identifiable {
    var id = UUID()
    var name: String
    var age: Int
}
