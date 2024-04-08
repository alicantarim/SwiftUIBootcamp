//
//  Padding Module.swift
//  SwiftUIBootcamp
//
//  Created by Alican TARIM on 7.04.2024.
//

import SwiftUI

struct Padding_Module: View {
    var body: some View {
        VStack {
            Text("Hello, world. How are you doing today?")
                .background(.blue)
                .padding()  // endes
                .background(.pink)
                .padding()
                .background(.green)
            
            Text("Horizontal Padding")
                .padding(.horizontal,32)
                .background(.purple)    // left + right
            
            Text("Vertical Padding")
                .padding(.vertical, 32)
                .background(.blue)  // top + bottom
            
            Text("Leading Padding")
                .padding(.leading, 32)
                .background(.blue)  // left or leading edge
            
            Text("Trailing Padding")
                .padding(.trailing, 32)
                .background(.orange)  // rigt or trailing edge
            
            Text("Top Padding")
                .padding(.top, 32)
                .background(.purple)  // 
            
            Text("Bottom Padding")
                .padding(.bottom, 32)
                .background(.mint)  // bottom

        }
        
            
        
        
    }
}

#Preview {
    Padding_Module()
}
