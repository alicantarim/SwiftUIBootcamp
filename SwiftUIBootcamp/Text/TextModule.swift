//
//  TextModule.swift
//  SwiftUIBootcamp
//
//  Created by Alican TARIM on 7.04.2024.
//

import SwiftUI

struct TextModule: View {
    var body: some View {
        Text("Hello, Bootcamp! This is the best bootcamp for SwiftUI in the world!")
            .font(.subheadline)
            .foregroundStyle(.blue)
            .fontWeight(.semibold)
            .multilineTextAlignment(.leading)
            .italic()
            .underline()
    }
}

#Preview {
    TextModule()
}
