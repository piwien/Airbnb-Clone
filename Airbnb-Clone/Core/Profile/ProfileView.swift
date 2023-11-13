//
//  ProfileView.swift
//  Airbnb-Clone
//
//  Created by Berkay Yaşar on 13.11.2023.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            //profile login
            VStack(alignment: .leading, spacing: 32) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    
                    Text("Log in to start planning your next trip")
                }
                
                Button(action: {}, label: {
                    Text("Log in")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 48)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                })
                
                HStack{
                    Text("Don't have an account?")
                    
                    Text("Sign up")
                        .fontWeight(.semibold)
                        .underline()
                }
                .font(.caption)
            }
            
            //profile option
            VStack(spacing: 24) {
                ProfileOptionView(iconName: "gear", text: "Settings")
                ProfileOptionView(iconName: "gear", text: "Accessibility")
                ProfileOptionView(iconName: "questionmark.circle", text: "Visit the help center")
            }
            .padding(.vertical)
        }
        .padding()
    }
}

#Preview {
    ProfileView()
}
