//
//  ContentView.swift
//  Health
//
//  Created by nham on 03/09/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            SummaryScreen()
                .tabItem {
    Image(systemName: "heart.fill")
        Text("Summary")
                }
    SharingScreen()
                .tabItem {
                    Image(systemName: "person.2.fill")
                Text("Sharing")
        }
        BrowseScreen()
                .tabItem {
            Image(systemName: "rectangle.grid.2x2.fill")
                    Text("Browse")
    }
        }
      }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
