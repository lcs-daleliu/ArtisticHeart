//
//  IntroductionView.swift
//  ArtisticHeart
//
//  Created by Yiren LIU on 2024-06-03.
//

import SwiftUI

struct IntroductionView: View {
    @State private var selectedTab = 0
    var body: some View {
        NavigationStack{
            VStack {
                VStack{
                    Text("Artistic")
                        .font(.custom(
                            "AmericanTypewriter",
                            fixedSize: 36))
                        .padding(.trailing,60)
                        .bold()
                    Text("Heart")
                        .font(.custom(
                            "AmericanTypewriter",
                            fixedSize: 36))
                        .padding(.leading,110)
                        .bold()
                }
                
                Image("Pencil")
                    .resizable()
                    .frame(width: 120, height: 130)
            }
            if (selectedTab != 0) {
                TabView {
                    IndexView(index: index1)
                        .tag(1)
                       
                    IndexView(index: index2)
                        .tag(2)
                        
                    IndexView(index: index3)
                        .tag(3)
                       
                    IndexView(index: index4)
                        .tag(4)
                        

                }
//                .border(.red)
                .tabViewStyle(.page)
                .indexViewStyle(.page(backgroundDisplayMode: .always))
                
            }
            
            // Experimental Code
//            Text("\(selectedTab)")
            if (selectedTab == 0){
                Button(action: {selectedTab += 1}, label: {
                     Text("Continue")
                         .font(.custom(
                             "AmericanTypewriter",
                             fixedSize: 30))
                     .bold()})

            } else {
                NavigationLink{
                    HomePageView()
                }label: {
                    Text("Skip to home")
                        .font(.custom(
                            "AmericanTypewriter",fixedSize: 30))
                    .bold()}
            }

        }
        
    }
}

#Preview {
    IntroductionView()
}
