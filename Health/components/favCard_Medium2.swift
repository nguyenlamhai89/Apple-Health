//
//  favCard_Medium2.swift
//  Health
//
//  Created by nham on 07/09/2023.
//

import SwiftUI
import Charts

struct caloriesDay: Identifiable {
    var id = UUID().uuidString
    var dayWeek: String
    var dayValue: Int
}

var caloData = [
    caloriesDay(dayWeek: "M", dayValue: 40),
    caloriesDay(dayWeek: "T", dayValue: 24),
    caloriesDay(dayWeek: "W", dayValue: 12),
    caloriesDay(dayWeek: "T", dayValue: 29),
    caloriesDay(dayWeek: "F", dayValue: 32),
    caloriesDay(dayWeek: "S", dayValue: 18),
    caloriesDay(dayWeek: "S", dayValue: 20),
    caloriesDay(dayWeek: "M", dayValue: 14),
    caloriesDay(dayWeek: "T", dayValue: 29)
]

struct favCard_Medium2: View {
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
                Text("The last 7 days, you burned an average of 81,1 calories a day.")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Divider()
                Chart (caloData) { d in
                    BarMark (
                        x: .value("Day", d.dayWeek),
                        y: .value("Calo", d.dayValue)
                    ).foregroundStyle(.red)
                        .cornerRadius(4)
                }
            }
            
        }
    }
}
