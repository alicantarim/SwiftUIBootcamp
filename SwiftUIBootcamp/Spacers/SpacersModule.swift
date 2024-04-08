//
//  SpacersModule.swift
//  SwiftUIBootcamp
//
//  Created by Alican TARIM on 7.04.2024.
//

import SwiftUI

struct SpacersModule: View {
    var body: some View {
//        VStack {
//            Text("Spacers Module")
//            
//            Spacer()
//                .frame(width: 40)
//                .background(.red)
//            
//            Text("Spacers Module")
//        }
        
//        HStack {
//            Text("Horizontal")
//            
//            Spacer()
//                .frame(height: 24)
//                .background(.blue)
//            
//            Text("Horizontal")
//        }
        
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
                
                Spacer()
                
                Image(systemName: "paperplane.circle.fill")
                    .foregroundColor(.blue)
                    .padding()
            }
            
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
                
                Spacer()
                
                Image(systemName: "paperplane.circle.fill")
                    .foregroundColor(.blue)
                    .padding()
            }
            
            Divider()
            
            Spacer()
        }
        .padding()
        
        
        
        
    }
}

#Preview {
    SpacersModule()
}
