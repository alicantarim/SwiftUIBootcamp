//
//  TextFieldModule.swift
//  SwiftUIBootcamp
//
//  Created by Alican TARIM on 8.04.2024.
//

import SwiftUI

struct TextFieldModule: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack(spacing: 24) {
            Image("messenger-app-icon")
                .resizable()
                .frame(width: 180, height: 180)
            
            VStack {
                TextField("Enter your email", text: $email)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(10)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
    //                .autocorrectionDisabled()
                
                SecureField("Enter your password", text: $password)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(10)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
            }
            
            Button {
                print("Email is \(email)")
                print("Password is \(password)")
            } label: {
                Text("Login In")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(minWidth: 360, minHeight: 48)
                    .background(.blue)
                    .cornerRadius(10)
            }

            
        }
        .padding()
    }
}

#Preview {
    TextFieldModule()
}
