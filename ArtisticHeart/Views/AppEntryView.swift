//
//  AppEntryView.swift
//  ArtisticHeart
//
//  Created by Yiren LIU on 2024-06-14.
//

import SwiftUI

struct AppEntryView: View {
    // MARK: Stored properties
    @State private var hasChosenGetStarted = false
    
    // MARK: Computed properties
    var body: some View {
        
        if hasChosenGetStarted == false {
            IntroductionView(welcomeToMyApp: $hasChosenGetStarted)
        } else {
           TabSwitchView()
        }
        
    }
}


#Preview {
    AppEntryView()
}
