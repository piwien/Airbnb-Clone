//
//  ExploreView.swift
//  Airbnb-Clone
//
//  Created by Berkay Yaşar on 11.11.2023.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                SearchAndFilterBar()
                
                LazyVStack(spacing: 30) {
                    ForEach(0...10, id: \.self) { listing in
                        NavigationLink(value: listing) {
                            ListingItemView()
                                .frame(height: 400)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                    }
                }
            }
            .navigationDestination(for: Int.self) { listing in
                Text("Listing detail view...")
            }
        }
    }
}

#Preview {
    ExploreView()
}
