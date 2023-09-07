//
//  articleCard.swift
//  Health
//
//  Created by nham on 07/09/2023.
//

import SwiftUI

struct articleCard: View {
    var imgName: String
    var cardName: String
    var cardContent: String
    var body: some View {
        VStack (alignment: .leading, spacing: 12) {
            Image(imgName)
                .resizable()
                .scaledToFit()
                .cornerRadius(8)
            VStack (alignment: .leading, spacing: 8) {
                Text(cardName)
                    .font(.headline)
                    .fontWeight(.bold)
                Text(cardContent)
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
            }
        }
    }
}
