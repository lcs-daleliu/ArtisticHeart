//
//  IntroductionView.swift
//  ArtisticHeart
//
//  Created by Yiren LIU on 2024-06-03.
//

import SwiftUI

struct IntroductionView: View {
    var body: some View {
        VStack{
            Text("Artistic")
                .font(.system(size: 60))
                .padding(.trailing,60)
                .bold()
            Text("Heart")
                .font(.system(size: 55))
                .padding(.leading,90)
                .bold()
            Image("Pencil")
                .resizable()
                .frame(width: 150, height: 150)
                .padding(.bottom, 300)
            Text("Continue")
                .font(.system(size: 30))
                .bold()
        }
    }
}

#Preview {
    IntroductionView()
}
