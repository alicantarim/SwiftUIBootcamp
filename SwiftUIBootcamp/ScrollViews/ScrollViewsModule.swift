//
//  ScrollViewsModule.swift
//  SwiftUIBootcamp
//
//  Created by Alican TARIM on 7.04.2024.
//

import SwiftUI

struct ScrollViewsModule: View {
    
    let driverImages = [
        "charles-leclerc",
        "lewis-hamilton",
        "max-verstappen",
        "lando-norris",
        "checo-perez",
        "fernando-alonso",
        "yuki-tsunoda",
        "daniel-ricciardo"
    ]
    
    let foodImage = [
        "burger",
        "pizza",
        "ramen",
        "steak",
        "sushi"
    ]
    var body: some View {
        //showsIndicators -> O anda scroll'un neresinde oldugunu gosteren bar.
//        ScrollView(showsIndicators: false) {
//            VStack {
//                ForEach(0 ... 30, id: \.self) { index in
//                    Text("Hello, \(index)")
//                }
//            }
//        }
//        
//        ScrollView(.horizontal, showsIndicators: true) {
//            HStack {
//                ForEach(0...10, id: \.self) { index in
//                    Rectangle()
//                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//                        .foregroundColor(.indigo)
//                }
//            }
//        }
//        
//        ScrollView(.horizontal, showsIndicators: false) {
//            HStack(spacing: 10) {
//                ForEach(driverImages, id: \.self) { image in
//                    Image(image)
//                        .resizable()
//                        .frame(width: 80, height: 80)
//                        .clipShape(Circle())
//                }
//            }
//            Spacer()
//        }
        
        VStack(alignment: .leading) {
            Text("Featured on Uber Eats")
                .font(.title2)
                .fontWeight(.semibold)
                .padding()
            
            ScrollView(showsIndicators: false) {
                VStack(spacing: 24) {
                    ForEach(foodImage, id: \.self) { foodImage in
                        VStack(alignment: .leading) {
                            Image(foodImage)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 360, height: 150)
                                .cornerRadius(10)
                            
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Shoto")
                                    .fontWeight(.bold)
                                
                                Text("$0.99 Del'very Fee | 15 - 30 min")
                                    .foregroundStyle(.gray)
                            }
                            .font(.subheadline)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewsModule()
}
