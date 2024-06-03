//
//  DetailView.swift
//  ArtisticHeart
//
//  Created by Yiren LIU on 2024-05-28.
//

import SwiftUI

struct DetailView: View {
    @Binding var Art: Works
    var body: some View {
        NavigationStack{
                VStack{
                    Image(Art.workImage)
                        .resizable()
                        .frame(height:300)
                    ScrollView(.vertical) {
                        VStack(alignment: .leading){
                            Text("By: "+Art.author)
                            Text("Year Created: "+Art.yearCreated)
                                .padding(.vertical)
                            Text("Description: "+Art.description)
                        }
                        .padding()
                    }
                }
                .navigationTitle(Art.workTitle)
                .toolbar{
                    ToolbarItem(placement:.topBarTrailing){
                        Button(action:{Art.isFarvorite.toggle()}){
                            Image(systemName: Art.isFarvorite ? "star.fill" : "star")
                        }
                    }
                }
            
            
        }
        
    }
}

#Preview {
    DetailView(Art:.constant(MonaLisa))
}
