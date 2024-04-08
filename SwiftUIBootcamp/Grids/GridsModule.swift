//
//  GridsModule.swift
//  SwiftUIBootcamp
//
//  Created by Alican TARIM on 7.04.2024.
//

import SwiftUI

struct GridsModule: View {
    
    let colums: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible())
    ]
    
    let drivers = [
        "charles-leclerc",
        "lewis-hamilton",
        "max-verstappen",
        "lando-norris",
        "checo-perez",
        "fernando-alonso",
        "yuki-tsunoda",
        "daniel-ricciardo"
    ]
    
    // substract 2 when we add 1 pixel of spacing on each horizontal edge
    let dimension = (UIScreen.main.bounds.width / 3) - 2
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVGrid(columns: colums, spacing: 1) {
                ForEach(drivers, id: \.self) { driver in
//                    Rectangle()
//                        .frame(height: dimension)
                    
                    Image(driver)
                        .resizable()
                        .scaledToFill()
                        .frame(width: dimension, height: dimension)
                        .clipShape(Rectangle())
                }
            }
            .padding(.horizontal, 1)
        }
    }
}

#Preview {
    GridsModule()
}
