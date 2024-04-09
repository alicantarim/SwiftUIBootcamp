//
//  UberEatsMenu.swift
//  SwiftUIBootcamp
//
//  Created by Alican TARIM on 8.04.2024.
//

import SwiftUI

struct UberEatsMenu: View {
        
    let menuItems: [MenuItem] = [
        .init(imageName: "burger", type: "American", restaurantName: "Shake Shack", descriptons: "$5.99 Delivery Free | 15 - 30 min"),
        .init(imageName: "pizza", type: "Italian", restaurantName: "Domino's", descriptons: "$8.49 Delivery Free | 10 - 20 min"),
        .init(imageName: "ramen", type: "Japanese", restaurantName: "Shoto", descriptons: "$12.85 Delivery Free | 20 - 35 min"),
        .init(imageName: "steak", type: "American", restaurantName: "Ruth's Chris", descriptons: "$27.49 Delivery Free | 25 - 40 min"),
        .init(imageName: "sushi", type: "Japanese", restaurantName: "Nobu", descriptons: "$15.25 Delivery Free | 20 - 30 min")
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


