//
//  HomePageViewModel.swift
//  ArtisticHeart
//
//  Created by Yiren LIU on 2024-06-13.
//

import Foundation

@Observable
class HomePageViewModel {
    
    var works: [Work]
    
    var favoriteWorks: Bool = true
    
    init(works: [Work] = []){
        self.works = works
        Task{
            try await getWorks()
        }
    }
    
    func getWorks() async throws {
        favoriteWorks = true
        do {
            let results: [Work] = try await supabase
                .from("artworks")
                .select()
                .execute()
                .value
            
            self.works = results
            
        } catch {
            debugPrint(error)
        }
        
    }
}
