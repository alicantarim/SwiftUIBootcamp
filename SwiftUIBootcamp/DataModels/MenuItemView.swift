//
//  MenuItemView.swift
//  SwiftUIBootcamp
//
//  Created by Alican TARIM on 8.04.2024.
//

import SwiftUI

struct MenuItemView: View {
    
    let menuItem: MenuItem
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(menuItem.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 360, height: 150)
                .cornerRadius(10)
            
            VStack(alignment: .leading) {
                Text(menuItem.restaurantName)
                    .fontWeight(.bold)
                
                Text(menuItem.type)
                    .foregroundStyle(.gray)
                
//                Text("$0.99 Del'very Fee | 15 - 30 min")
                Text(menuItem.descriptons)
                    .foregroundStyle(.gray)
            }
            .font(.subheadline)
        }
    }
}

#Preview {
    MenuItemView(menuItem: MenuItem(imageName: "burger", type: "American", restaurantName: "Shake Shack", descriptons: "$5.99 Delivery Free | 15 - 30 min"))
}
