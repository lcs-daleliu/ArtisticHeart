//
//  SearchView.swift
//  ArtisticHeart
//
//  Created by Yiren LIU on 2024-05-24.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    @State var all:[Works] = allArtworks
    let twocolumns  = [GridItem(), GridItem()]
    var body: some View {
        NavigationStack{
            ScrollView(.vertical){
                LazyVGrid(columns: twocolumns){
                    ForEach($all) {$currentArtwork in
                        NavigationLink{
                            DetailView(Art:$currentArtwork)}label:{
                                FamousWorksView(artWork: currentArtwork)
                                
                            }
                            .foregroundColor(.black)
                        
                    }
                }
            }
            .navigationTitle("Search for Works")
            .searchable(text: $searchText)
        }
        
        
        
        
        
    }
    
    
}

#Preview {
    SearchView()
}
