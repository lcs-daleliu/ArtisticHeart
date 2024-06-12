//
//  HomePageView.swift
//  ArtisticHeart
//
//  Created by Yiren LIU on 2024-06-03.
//

import SwiftUI

struct HomePageView: View {
    @State var all:[Works] = allArtworks
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
                        ForEach($all.filter{painting in painting.isFarvorite.wrappedValue}){ $currentArtWork in
                            NavigationLink{
                                DetailView(Art: $currentArtWork)}label:{
                                FamousWorksView(artWork: currentArtWork)
                            }
                        }
                    }
                }
                .foregroundColor(.black)
               
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
