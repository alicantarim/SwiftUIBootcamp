//
//  ButtonsModule.swift
//  SwiftUIBootcamp
//
//  Created by Alican TARIM on 7.04.2024.
//

import SwiftUI

struct ButtonsModule: View {
    
    @State var rectangleColor = Color.blue
    @State var title = "Hello"
    
    var body: some View {
//        Button("Click me") {
//            print("Button clicked")
//        }
        
        VStack {
            Rectangle()
                .frame(width: 200, height: 100)
                .cornerRadius(10)
                .foregroundColor(rectangleColor)
            
            Text(title)
                .font(.title)
            
            Button("Click me") {
                rectangleColor = .pink
                title = "Basic button"
            }
            .padding()
            
            Button {
                rectangleColor = .purple
                title = "Custom Buttom"
            } label: {
                Text("Custom Button")
                    .font(.headline)
                    .frame(width: 360, height: 48)
                    .background(.purple)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
            
            Button {
                rectangleColor = .red
                title = "Image Button"
            } label: {
                Image(systemName: "heart.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundColor(.red)
            }
        }
    }
}

#Preview {
    ButtonsModule()
}
