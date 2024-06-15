//
//  DetailView.swift
//  ArtisticHeart
//
//  Created by Yiren LIU on 2024-05-28.
//

import SwiftUI

struct DetailView: View {
    let currentArtwork: Work
    @Environment(HomePageViewModel.self) var viewModel
    var body: some View {
        NavigationStack{
            VStack{
                if let workImage = currentArtwork.workImage {
                    Image(workImage)
                        .resizable()
                        .frame(height:300)
                } else {
                    // Placeholder image
                    Image(systemName: "person")
                        .resizable()
                        .frame(height:300)
                }
                ScrollView(.vertical) {
                    VStack(alignment: .leading){
                        Text("By: "+currentArtwork.author)
                        Text("Year Created:" + "\(currentArtwork.yearCreated)")
                            .padding(.vertical)
                        Text("Description: "+currentArtwork.description)
                    }
                    .padding()
                }
            }
            .navigationTitle(currentArtwork.workTitle)
            .toolbar{
                ToolbarItem(placement:.topBarTrailing){
                    Button {
                        // Toggle the value in the database
//                        viewModel.setAsFavourite()
//                        currentArtwork.isFavorite.toggle()
                    } label: {
                        Image(systemName: currentArtwork.isFavorite ? "star.fill" : "star")
                    }

                }
            }
            
            
        }
        
    }
}

//#Preview {
//    DetailView(Art:.constant(MonaLisa))
//}
