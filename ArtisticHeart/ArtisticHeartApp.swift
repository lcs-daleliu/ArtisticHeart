//
//  ArtisticHeartApp.swift
//  ArtisticHeart
//
//  Created by Yiren LIU on 2024-05-24.
//

import SwiftUI

@main
struct ArtisticHeartApp: App {
    var body: some Scene {
        WindowGroup {
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
}
