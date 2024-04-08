//
//  LopsModule.swift
//  SwiftUIBootcamp
//
//  Created by Alican TARIM on 7.04.2024.
//

import SwiftUI

struct LopsModule: View {
    
    let drivers: [String] = [
        "Levis Hamilton",
        "Checo Perez",
        "Lando Norris",
        "Charles Leclerc",
        "Max Verstappen"
    ]
    
    var body: some View {
        VStack {
            ForEach(drivers, id: \.self) { driver in
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
                        
                        Text(driver)
                            .font(.subheadline)
                    }
                    
                    Spacer()
                    
                    Image(systemName: "paperplane.circle.fill")
                        .foregroundColor(.blue)
                        .padding()
                }
            }
            
            Text("Loop ended")
        }
        .padding()
        
        Spacer()

    }
}

#Preview {
    LopsModule()
}
