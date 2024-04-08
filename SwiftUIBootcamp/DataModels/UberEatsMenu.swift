//
//  UberEatsMenu.swift
//  SwiftUIBootcamp
//
//  Created by Alican TARIM on 8.04.2024.
//

import SwiftUI

struct UberEatsMenu: View {
        
    let menuItems: [MenuItem] = [
        .init(imageName: "burger", type: "American", restaurantName: "Shake Shack"),
        .init(imageName: "pizza", type: "Italian", restaurantName: "Domino's"),
        .init(imageName: "ramen", type: "Japanese", restaurantName: "Shoto"),
        .init(imageName: "steak", type: "American", restaurantName: "Ruth's Chris"),
        .init(imageName: "sushi", type: "Japanese", restaurantName: "Nobu")
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Featured on Uber Eats")
                .font(.title2)
                .fontWeight(.semibold)
                .padding()
            
            ScrollView(showsIndicators: false) {
                VStack(spacing: 24) {
                    ForEach(menuItems) { item in
                        MenuItemView(menuItem: item)
                    }
                }
            }
        }
    }
}

#Preview {
    UberEatsMenu()
}


