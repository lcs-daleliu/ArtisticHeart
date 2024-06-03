//
//  ContentView.swift
//  ArtisticHeart
//
//  Created by Yiren LIU on 2024-05-24.
//

import SwiftUI

struct ContentView: View {
    @State var searchText = ""
    let twocolumns  = [GridItem(), GridItem()]
    var body: some View {
        NavigationStack{
        ZStack {
            VStack {
                ScrollView(.vertical){
                    LazyVGrid(columns: twocolumns){
                        ForEach(allArtworks) {currentArtwork in
                            FamousWorks(artWork: currentArtwork)
                            }
                    }
                }
            }
        }
        .navigationTitle("Search for Works")
        .searchable(text: $searchText)
        .toolbar{
            ToolbarItem(placement:.topBarLeading){
                Button("Cancel"){
                }
            }
            ToolbarItem(placement:.topBarTrailing){
                    Button("Done"){
                    }
            }
        }
           
        }
    }
}

#Preview {
    ContentView()
}
