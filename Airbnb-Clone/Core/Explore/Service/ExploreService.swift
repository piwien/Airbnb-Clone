//
//  ExploreService.swift
//  Airbnb-Clone
//
//  Created by Berkay Yaşar on 13.11.2023.
//

import Foundation

class ExploreService {
    
    func fetchListing() async throws -> [Listing] {
        return DeveloperPreview.shared.listing
    }
    
}
