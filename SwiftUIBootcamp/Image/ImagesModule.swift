//
//  ImagesModule.swift
//  SwiftUIBootcamp
//
//  Created by Alican TARIM on 7.04.2024.
//

import SwiftUI

struct ImagesModule: View {
    var body: some View {
//        Image(systemName: "heart.circle.fill")
//            .resizable()
//            .foregroundColor(.red)
//            .frame(width: 200, height: 200)
//            .font(.largeTitle)
//            .imageScale(.large)
        
        Image("charles-leclerc")
            .resizable()
            .scaledToFill()
            .frame(width: 200, height: 200)
//            .clipped()
            .clipShape(Circle())
            
            
    }
}

#Preview {
    ImagesModule()
}
