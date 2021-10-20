//
//  SettingsRowView.swift
//  Fructose
//
//  Created by Natraj, Rohit on 9/29/21.
//

import SwiftUI

struct SettingsRowView: View {
    var settingsLabel: String
    var settingsValue: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(settingsLabel).foregroundColor(.gray)
                Spacer()
                if let settingsValue = settingsValue {
                    Text(settingsValue)
                } else if let linkLabel = linkLabel, let linkDestination = linkDestination, let url = URL(string: "https://\(linkDestination)") {
                    Link(linkLabel, destination: url)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(settingsLabel: "Developer", settingsValue: "Rohit Natraj")
                .previewLayout(.sizeThatFits)
            .padding()
            SettingsRowView(settingsLabel: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftUImasterclass.com")
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
