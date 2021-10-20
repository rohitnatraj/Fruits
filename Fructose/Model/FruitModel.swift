//
//  FruitModel.swift
//  Fructose
//
//  Created by Natraj, Rohit on 9/23/21.
//

import SwiftUI

// MARK: - Fruits Data Model

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
