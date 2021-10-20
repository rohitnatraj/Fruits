//
//  SourceLinkView.swift
//  Fructose
//
//  Created by Natraj, Rohit on 9/24/21.
//

import SwiftUI

struct SourceLinkView: View {
    var fruit: Fruit
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com/wiki/\(fruit.title)")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView(fruit: fruitsData[3])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
