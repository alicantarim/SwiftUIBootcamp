//
//  MenuItem.swift
//  SwiftUIBootcamp
//
//  Created by Alican TARIM on 8.04.2024.
//

import Foundation

struct MenuItem: Identifiable {
    
    var id = NSUUID().uuidString
    let imageName: String
    let type: String
    let restaurantName: String
}
