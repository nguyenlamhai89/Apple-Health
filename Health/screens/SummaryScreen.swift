//
//  SummaryScreen.swift
//  Health
//
//  Created by nham on 03/09/2023.
//

import SwiftUI

struct SummaryScreen: View {
    var body: some View {
        NavigationView {
            List {
                Section (header: Text("Hello")) {
                    Favorites_Card()
                    Favorites_Card()
                    Favorites_Card()

                }
                .headerProminence(.increased)
            }
            .navigationTitle("Summary")
        }
    }
}

struct SummaryScreen_Previews: PreviewProvider {
    static var previews: some View {
        SummaryScreen()
    }
}
