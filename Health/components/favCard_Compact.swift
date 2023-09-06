//
//  favCard_Compact.swift
//  Health
//
//  Created by nham on 06/09/2023.
//

import SwiftUI

struct favCard_Compact: View {
    var imgName: String
    var cardName: String
    var cardValue: Int
    var titleValue: String
    var accentColor: Color
    var body: some View {
        NavigationLink {
            SharingScreen()
        } label: {
            VStack (alignment: .leading, spacing: 16) {
                HStack {
                    HStack {
                        Image(systemName: imgName)
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(accentColor)
                            .frame(width: 10)
                        Text(cardName)
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .foregroundColor(accentColor)
                    }
                    Spacer()
                    Text("13:51")
                        .font(.footnote)
                        .foregroundColor(Color.gray)
                }
                HStack (alignment: .firstTextBaseline) {
                    Text("\(cardValue)")
                        .font(.title2)
                        .fontWeight(.bold)
                    Text(titleValue)
                        .font(.footnote)
                        .foregroundColor(Color.gray)
                }
            }
            
            
        }
    }
}
