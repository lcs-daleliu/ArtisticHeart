//
//  FamousWorksView.swift
//  ArtisticHeart
//
//  Created by Yiren LIU on 2024-05-26.
//

import SwiftUI

struct FamousWorksView: View {
    let artWork:Work
    let backGroundGray = Color(red:0.85,green:0.85,blue:0.85)
    var body: some View {
        ZStack{
            Rectangle()
                .fill(backGroundGray)
                .frame(width: 180, height:190)
            VStack{
                Image(artWork.workImage)
                    .resizable()
                    .frame(width: 140,height: 90)
                VStack(alignment: .leading) {
                    Text(artWork.workTitle)
                        .bold()
                    Text("By: "+artWork.author)
                    Text("Year Created:" + "\(artWork.yearCreated)")
                    
                }
            }
        }
    }
}

//#Preview {
//    FamousWorksView(artWork: WhistlersMother)
//}
