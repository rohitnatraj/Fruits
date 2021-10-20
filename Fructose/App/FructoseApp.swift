//
//  FructoseApp.swift
//  Fructose
//
//  Created by Natraj, Rohit on 9/23/21.
//

import SwiftUI

@main
struct FructoseApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                FruitListView(fruits: fruitsData)
            }
        }
    }
}
