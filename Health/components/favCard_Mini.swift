//
//  favCard_Mini.swift
//  Health
//
//  Created by nham on 06/09/2023.
//

import SwiftUI

struct favCard_Mini: View {
    var imgName: String
    var cardName: String
    var body: some View {
        NavigationLink {
            SharingScreen()
        } label: {
            Image(imgName)
                .resizable()
                .scaledToFit()
                .frame(width: 24)
            Text(cardName)
                .font(.subheadline)
        }
    }
}
