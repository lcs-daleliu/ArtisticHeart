//
//  IndexView.swift
//  ArtisticHeart
//
//  Created by Yiren LIU on 2024-06-03.
//

import SwiftUI

struct IndexView: View {
    @Binding var index: indexBox
    var body: some View {
        VStack{
            Image(index.indexImage)
                .resizable()
                .frame(width: 130, height: 130)
            Text(index.introduction)
                .padding(.horizontal)
        }
        .frame(width: 270, height: 270)
        .background(
            Rectangle()
                .opacity(0.2)
                .cornerRadius(20))
    }
}

#Preview {
    IndexView(index: .constant(index1))
}
