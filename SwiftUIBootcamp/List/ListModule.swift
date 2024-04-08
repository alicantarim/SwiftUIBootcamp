//
//  ListModule.swift
//  SwiftUIBootcamp
//
//  Created by Alican TARIM on 7.04.2024.
//

import SwiftUI

struct ListModule: View {
    
    @State var drivers = [
        "Levis Hamilton",
        "Checo Perez",
        "Lando Norris",
        "Charles Leclerc",
        "Max Verstappen",
        "Fernando Alonso",
        "Yuki Tsunoda",
        "Daniel Ricciardo",
        "Lando Norris"
    ]
    
    let teams = [
        "Mercedes",
        "Ferrari",
        "RedBull",
        "Williams",
        "Alfa Romeo"
    ]
    
    var body: some View {
        List {
            Section("Drivers") {
                ForEach(drivers, id: \.self) { driver in
                    Text(driver)
                }
                .onDelete(perform: { indices in
                    drivers.remove(atOffsets: indices)
                })
            }
            
            Section("Teams") {
                ForEach(teams, id: \.self) { team in
                    Text(team)
                }
            }
        }
        .listStyle(SidebarListStyle())
    }
}

#Preview {
    ListModule()
}
