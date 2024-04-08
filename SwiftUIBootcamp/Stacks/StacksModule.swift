//
//  StacksModule.swift
//  SwiftUIBootcamp
//
//  Created by Alican TARIM on 7.04.2024.
//

import SwiftUI

struct StacksModule: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 12) {
            // cell 1
            HStack {
                // profile image
                Image("charles-leclerc")
                    .resizable()
                    .frame(width: 56, height: 56)
                    .clipShape(Circle())
                
                // name stuff
                VStack(alignment: .leading) {
                    Text("charlesleclerc")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Text("Charles Leclerc")
                }
            }
            //.padding()
            
            Divider()
            
            // cell 2
            HStack {
                // profile image
                Image("max-verstappen")
                    .resizable()
                    .frame(width: 56, height: 56)
                    .clipShape(Circle())
                
                // name stuff
                VStack(alignment: .leading) {
                    Text("maxverstappen")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Text("Max Verstappen")
                }
            }
            //.padding()
            
            Divider()
        }
        .padding()
        
        
        
        
        //        VStack(alignment: .center,spacing: 20) {
//            ZStack {
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 360, height: 50)
//                    .cornerRadius(10)
//                
//                Text("Hello, world")
//                    .foregroundStyle(.white)
//                    .font(.headline)
//            }
//            
//            HStack {
//                Rectangle()
//                    .fill(.blue)
//                    .frame(width: 100, height: 100)
//                    .cornerRadius(10)
//                
//                Rectangle()
//                    .fill(.green)
//                    .frame(width: 200, height: 100)
//                    .cornerRadius(10)
//            }
//        }
        
//        HStack(alignment: .bottom, spacing: 30) {
//            VStack {
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 100, height: 400)
//                    .cornerRadius(10)
//                
//                Text("Revenue")
//            }
//            
//            VStack{
//                Rectangle()
//                    .fill(.blue)
//                    .frame(width: 100, height: 200)
//                    .cornerRadius(10)
//                
//                Text("Profit")
//            }
//            
//            VStack {
//                Rectangle()
//                    .fill(.purple)
//                    .frame(width: 100, height: 100)
//                    .cornerRadius(10)
//                
//                Text("Margin")
//            }
//        }
        
//        ZStack(alignment: .bottomLeading) {
//            Rectangle()
//                .fill(.red)
//                .frame(width: 200, height: 200)
//                .cornerRadius(10)
//            
//            Rectangle()
//                .fill(.blue)
//                .frame(width: 100, height: 100)
//                .cornerRadius(10)
//            
//            Rectangle()
//                .fill(.orange)
//                .frame(width: 50, height: 50)
//                .cornerRadius(10)
//        }
    }
}

#Preview {
    StacksModule()
}
