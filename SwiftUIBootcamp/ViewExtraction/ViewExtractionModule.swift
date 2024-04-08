//
//  ViewExtractionModule.swift
//  SwiftUIBootcamp
//
//  Created by Alican TARIM on 8.04.2024.
//

import SwiftUI

struct ViewExtractionModule: View {
    var body: some View {
        ScrollView {
            DriverRowView(driverName: "Lewis Hamilton", imageName: "lewis-hamilton", teamName: "Mercedes")
            DriverRowView(driverName: "Max Verstappen", imageName: "max-verstappen", teamName: "RedBull")
            DriverRowView(driverName: "Fernando Alonso", imageName: "fernando-alonso", teamName: "Aston Martin")
            DriverRowView(driverName: "Charles Leclerc", imageName: "charles-leclerc", teamName: "Ferrari")
        }
        .padding()
    }
}

struct DriverRowView: View {
    
    let driverName: String
    let imageName: String
    let teamName: String
    
    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
            
            VStack(alignment: .leading) {
                Text(driverName)
                    .fontWeight(.semibold)
                
                Text(teamName)
                    .foregroundStyle(.gray)
            }
            .font(.subheadline)
            
            Spacer()
        }
    }
}

#Preview {
    ViewExtractionModule()
}
