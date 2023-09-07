//
//  appCard.swift
//  Health
//
//  Created by nham on 07/09/2023.
//

import SwiftUI

struct appCard: View {
    var imgApp: String
    var nameApp: String
    var descApp: String
    @Binding var isShown: Bool
    var body: some View {
        HStack (spacing: 12) {
            Image(systemName: imgApp)
                .resizable()
                .scaledToFit()
                .frame(width: 32)
                .foregroundColor(Color.red)
                .symbolRenderingMode(.hierarchical)
            HStack {
                VStack (alignment: .leading, spacing: 4) {
                    Text(nameApp)
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Text(descApp)
                        .font(.caption2)
                        .foregroundColor(Color.gray)
                }
                Spacer()
                Button {
                    print("Clicked")
                    isShown.toggle()
                } label: {
                    Image(systemName: "info.circle")
                        .foregroundColor(Color.gray)
                }
            }
        }.padding(.vertical, 4)
        
        
    }
}
