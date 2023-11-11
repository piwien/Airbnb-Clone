//
//  ListingImageCarouselView.swift
//  Airbnb-Clone
//
//  Created by Berkay Yaşar on 12.11.2023.
//

import SwiftUI

struct ListingImageCarouselView: View {
    
    var images = [
        "listing-1-miami",
        "listing-2-miami",
        "listing-3-miami",
        "listing-4-miami",
    ]
    
    var body: some View {
        TabView{
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView()
}
