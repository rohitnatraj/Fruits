//
//  OnboardingView.swift
//  Fructose
//
//  Created by Natraj, Rohit on 9/23/21.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - Properties
    var fruits = fruitsData
    // MARK: - Body
    var body: some View {
        TabView {
            
            ForEach(fruits[0..<fruits.count]) { fruit in
                FruitCardView(fruit: fruit)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
