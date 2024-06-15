//
//  SearchView.swift
//  ArtisticHeart
//
//  Created by Yiren LIU on 2024-05-24.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    @State private var viewModel = HomePageViewModel()
    let twocolumns  = [GridItem(), GridItem()]
    var body: some View {
        NavigationStack{
            ScrollView(.vertical){
                LazyVGrid(columns: twocolumns){
                    ForEach(viewModel.works) { currentArtwork in
                        NavigationLink{
                            DetailView(currentArtwork:currentArtwork)
                                .environment(viewModel)
                        }label:{
                                FamousWorksView(artWork: currentArtwork)
                                
                            }
                            .foregroundColor(.black)
                        
                    }
                }
            }
            .navigationTitle("Search for Works")
            .searchable(text: $searchText)
                        .onChange(of: searchText) {
                            Task {
                                try await viewModel.filterWorks(on: searchText)
                            }
                        }
        }
        
        
        
        
        
    }
    
    
}

#Preview {
    SearchView()
}
