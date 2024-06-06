//
//  HomePageView.swift
//  ArtisticHeart
//
//  Created by Yiren LIU on 2024-06-03.
//

import SwiftUI

struct HomePageView: View {
    let twocolumns  = [GridItem(spacing:20), GridItem(spacing:20)]
    var body: some View {
        NavigationStack{
            VStack(alignment:.leading){
                HStack{
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 70, height: 70)
                    VStack(alignment: .leading){
                        Text("Nickname: Dale Liu")
                            .padding(.vertical,5)
                        Text("Account Number: 51809599019")
                    }
                }
                Text("My Favorites")
                    .font(.title2)
                    .bold()
                ScrollView(.vertical) {
                    LazyVGrid(columns: twocolumns){
                        ForEach(allArtworks.filter{painting in painting.isFarvorite}){ currentArtWork in
                            FamousWorksView(artWork: currentArtWork)
                        }
                    }
                }
               
            }
            .padding(.horizontal)
            .navigationTitle("My Home")
            Spacer()
        }
        
    }
}

#Preview {
    HomePageView()
}
