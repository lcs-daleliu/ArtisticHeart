//
//  FamousWorks.swift
//  ArtisticHeart
//
//  Created by Yiren LIU on 2024-05-26.
//

import SwiftUI

struct FamousWorks: View {
    let artWork:Works
    var body: some View {
        ZStack{
            Rectangle()
                .fill(artWork.backGroundGray)
                .frame(width: 180, height:190)
            VStack{
                Image(artWork.workImage)
                    .resizable()
                    .frame(width: 140,height: 90)
                VStack(alignment: .leading) {
                    Text(artWork.workTitle)
                        .bold()
                    Text("By: "+artWork.author)
                    Text("Year Created: "+artWork.yearCreated)
                }
            }
        }
    }
}

#Preview {
    FamousWorks(artWork: WhistlersMother)
}
