//
//  TabSwitchView.swift
//  ArtisticHeart
//
//  Created by Yiren LIU on 2024-06-14.
//

import SwiftUI

struct TabSwitchView: View {
    var body: some View {
        @State var hasChooseContinue = false
        TabView {
            HomePageView()
                .tabItem {
                    Image(
                        systemName: "house")
                    Text("Home")
                }
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            DrawingView()
                .tabItem {
                    Image(systemName: "hand.draw")
                    Text("Draw")
                }
        }
        
    }
}

#Preview {
    TabSwitchView()
}
