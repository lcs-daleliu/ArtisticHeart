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
    
    func filterWorks(on searchTerm: String) async throws {
            
            if searchTerm.isEmpty {
                
                Task {
                    try await getWorks()
                }
                
            } else {
                
                do {
                    let results: [Work] = try await supabase
                        .from("artworks")
                        .select()
                        .ilike("work_title", pattern: "%\(searchTerm)%")
                        .order("id", ascending: true)
                        .execute()
                        .value
                    
                    self.works = results
                    
                } catch {
                    debugPrint(error)
                }
                
            }
            
        }
}
