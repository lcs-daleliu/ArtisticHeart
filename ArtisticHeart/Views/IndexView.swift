//
//  IndexView.swift
//  ArtisticHeart
//
//  Created by Yiren LIU on 2024-06-03.
//

import SwiftUI

struct IndexView: View {
    let index: IndexBox
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .foregroundStyle(Color.secondary)
            .opacity(0.05)
            .overlay {
                
                VStack {
                    Image(index.indexImage)
                        .resizable()
                        .frame(width: 130, height: 130)
                    Text(index.introduction)
                        .frame(width:235)
                }
                
            }
            .padding(20)
    }
}

//#Preview {
//    IndexView(index: index1)
//}
