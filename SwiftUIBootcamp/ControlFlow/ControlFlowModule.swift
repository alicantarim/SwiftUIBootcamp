//
//  ControlFlowModule.swift
//  SwiftUIBootcamp
//
//  Created by Alican TARIM on 8.04.2024.
//

import SwiftUI

struct ControlFlowModule: View {
    
    @State var showImage = true
    @State var didLike = false
    @State var likes = 500
    
    var body: some View {
//        if showImage {
//            Image(systemName: "heart.fill")
//                .resizable()
//                .frame(width: 64, height: 64)
//                .foregroundColor(.red)
//        } else {
//            Text("No image to show")
//        }
        
        VStack {
            Button {
                didLike.toggle()
                
                if didLike {
                    likes += 1
                } else {
                    likes -= 1
                }
            } label: {
                Image(systemName: didLike ? "heart.fill" : "heart")
                    .resizable()
                    .frame(width: 64, height: 64)
                    .foregroundColor(didLike ? .red : .black)
                
//                if didLike {
//                    Image(systemName: "heart.fill")
//                        .resizable()
//                        .frame(width: 64, height: 64)
//                        .foregroundColor(.red)
//                } else {
//                    Image(systemName: "heart")
//                        .resizable()
//                        .frame(width: 64, height: 64)
//                        .foregroundColor(.black)
//                }
            }
            
            Text("\(likes) likes")
                .font(.headline)
        }
        
    }
}

#Preview {
    ControlFlowModule()
}

/*
 In Swift, a ternary statement is a concise way to write a conditional expression that result in
 one of two values based on a condition.
 
 It's also known as the ternary conditional operator and has the following syntax:
 
 contidion ? valueIfTrue : valueIfFalse
 
 Here's how it works:
 
 condition is an expression that evaluates to either true or false.
 If condition is true, the expression returns valueIfTrue
 If condition is false, the expression returns valueIfFalse
 */
