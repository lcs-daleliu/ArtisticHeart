//
//  IndexView.swift
//  ArtisticHeart
//
//  Created by Yiren LIU on 2024-06-03.
//

import SwiftUI

struct IndexView: View {
    let index: indexBox
    var body: some View {
        VStack{
            Image(index.indexImage)
                .resizable()
                .frame(width: 130, height: 130)
            Text(index.introduction)
                .padding(.horizontal)
               
        }
        .frame(width: 270, height: 280)
        .background(
            Rectangle()
                .opacity(0.05)
                .cornerRadius(20))
    }
}

#Preview {
    IndexView(index: index1)
}
