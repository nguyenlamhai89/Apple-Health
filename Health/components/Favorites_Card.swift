//
//  Favorites_Card.swift
//  Health
//
//  Created by nham on 03/09/2023.
//

import SwiftUI

struct Favorites_Card: View {
    var body: some View {
        NavigationLink {
            Detail_Steps()
        } label: {
            Text("Steps")
        }
    }
}

struct Favorites_Card_Previews: PreviewProvider {
    static var previews: some View {
        Favorites_Card()
    }
}
