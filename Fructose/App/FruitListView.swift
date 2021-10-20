//
//  FruitListView.swift
//  Fructose
//
//  Created by Natraj, Rohit on 9/23/21.
//

import SwiftUI

struct FruitListView: View {
    var fruits: [Fruit] = fruitsData
    @State private var isShowingSettings: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item), label: {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    })
                    
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isShowingSettings = true
            }) {
                Image(systemName: "slider.horizontal.3")
            }
                                    .sheet(isPresented: $isShowingSettings) {
                SettingsView()
            }
            )
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct FruitListView_Previews: PreviewProvider {
    static var previews: some View {
        FruitListView(fruits: fruitsData)
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11 Pro")
    }
}
