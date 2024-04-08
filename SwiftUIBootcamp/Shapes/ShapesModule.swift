//
//  ShapesModule.swift
//  SwiftUIBootcamp
//
//  Created by Alican TARIM on 7.04.2024.
//

import SwiftUI

struct ShapesModule: View {
    var body: some View {
//        Circle()
//            .stroke(lineWidth: 20)
//            .fill(.purple)
//            .foregroundStyle(.pink)
//            .frame(width: 200, height: 200)
        
//        Rectangle()
//            .fill(.blue)
//            .ignoresSafeArea()
//            .frame(width: 200, height: 100)
//            .cornerRadius(10)
        
        Capsule()
            .fill(.cyan)
            .frame(width: 200, height: 70)
        
        
    }
}

#Preview {
    ShapesModule()
}
