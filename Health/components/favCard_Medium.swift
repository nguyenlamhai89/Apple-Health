//
//  favCard_Medium.swift
//  Health
//
//  Created by nham on 06/09/2023.
//

import SwiftUI

struct favCard_Medium: View {
    var imgName: String
    var cardName: String
    var accentColor: Color
    var body: some View {
        NavigationLink {
            SharingScreen()
        } label: {
            VStack (alignment: .leading, spacing: 12) {
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
                Text("Your water intake is lower this week than lask week.")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Divider()
                VStack (alignment: .leading, spacing: 16) {
                    VStack (alignment: .leading, spacing: 4) {
                        HStack (alignment: .firstTextBaseline) {
                            Text("4.490")
                                .font(.title2)
                                .fontWeight(.bold)
                            Text("mL")
                                .font(.footnote)
                                .foregroundColor(Color.gray)
                        }
                        Text("This week")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .padding(.leading, 8)
                            .frame(width: 120, height: 24, alignment: .leading)
                            .background(Color.green)
                            .cornerRadius(4)
                    }
                    VStack (alignment: .leading, spacing: 4) {
                        HStack (alignment: .firstTextBaseline) {
                            Text("14.030")
                                .font(.title2)
                                .fontWeight(.bold)
                            Text("mL")
                                .font(.footnote)
                                .foregroundColor(Color.gray)
                        }
                        Text("Last week")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                            .padding(.leading, 8)
                            .frame(width: 260, height: 24, alignment: .leading)
                            .background(Color("gray_Color"))
                            .cornerRadius(4)
                    }
                }
                
                
            }
            
        }
    }
}
