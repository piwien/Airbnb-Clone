//
//  ProfileOptionView.swift
//  Airbnb-Clone
//
//  Created by Berkay Yaşar on 13.11.2023.
//

import SwiftUI

struct ProfileOptionView: View {
    let iconName: String
    let text: String
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: iconName)
                
                Text(text)
                    .font(.subheadline)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                
            }
            
            Divider()
        }
    }
}

#Preview {
    ProfileOptionView(iconName: "gear", text: "Settings")
}
