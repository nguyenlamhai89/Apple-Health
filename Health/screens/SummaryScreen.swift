//
//  SummaryScreen.swift
//  Health
//
//  Created by nham on 03/09/2023.
//

import SwiftUI

struct SummaryScreen: View {
    @State private var isShown: Bool = false
    var body: some View {
        NavigationView {
            List {
                //Favorites Section
                Section(header: Text("Hahaha")) {
                    favCard_Compact(imgName: "flame.fill", cardName: "Steps", cardValue: 515, titleValue: "steps", accentColor: Color.red)
                    favCard_Compact(imgName: "flame.fill", cardName: "Walking + Running Distance", cardValue: 1, titleValue: "km", accentColor: Color.red)
                    favCard_Compact(imgName: "drop.degreesign", cardName: "Water", cardValue: 750, titleValue: "mL", accentColor: Color.green)
                    favCard_Mini(imgName: "health_logo", cardName: "Show All Health Data")
                }
                .headerProminence(.increased)
                
                // Trends Section
                Section(header: Text("Trends")) {
                    favCard_Mini(imgName: "health_logo", cardName: "Show All Health Trends")
                }
                .headerProminence(.increased)
                
                // Highlights Section
                Section(header: Text("Highlights")) {
                    favCard_Medium1(imgName: "drop.degreesign", cardName: "Water", accentColor: Color.green)
                    favCard_Medium2(imgName: "flame.fill", cardName: "Active Energy", accentColor: Color.red)
                }
                .headerProminence(.increased)
                
                //Articles Section
                Section(header: Text("Articles")) {
                    articleCard(imgName: "mountain", cardName: "Why Hearing Health Matters", cardContent: "Get insights into your hearing and how to look after it.")
                    articleCard(imgName: "sea", cardName: "Learn About Cardio Fitness", cardContent: "How it's measured, why it matters, and how to improve yours.")
                    articleCard(imgName: "village", cardName: "Understanding Walking Steadiness", cardContent: "What it is and why you should pay attention to it.")
                }
                .headerProminence(.increased)
                
                //Apps Section
                Section(header: Text("Apps")) {
                    appCard(imgApp: "fork.knife.circle.fill", nameApp: "YAZIO Fasting & Food Tracker", descApp: "Calorie Counter and Diet Diary", isShown: $isShown)
                    appCard(imgApp: "house.circle.fill", nameApp: "Zova", descApp: "Spotify powered home workouts", isShown: $isShown)
                    appCard(imgApp: "figure.run.circle.fill", nameApp: "Zenia: Interactive Fitness App", descApp: "Your essential home workout", isShown: $isShown)
                    appCard(imgApp: "bicycle.circle.fill", nameApp: "Cycles: Period & Cycle Tracker", descApp: "Fertility & Ovulation App", isShown: $isShown)
                    appCard(imgApp: "sun.max.circle.fill", nameApp: "HabitMinder • Habit Tracker", descApp: "Daily Goal Planner, To Do List", isShown: $isShown)
                }
                .headerProminence(.increased)
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Summary")
            .toolbar {
                ToolbarItem {
                    Button {
                        print("Clicked")
                        isShown.toggle()
                    } label: {
                        Image(systemName: "plus.circle")
                    }
                }
            }
            .sheet(isPresented: $isShown) {
                Button {
                    isShown.toggle()
                } label: {
                    Text("Back")
                        .foregroundColor(Color.accentColor)
                }

                Image("cat_meme")
                    .resizable()
                    .scaledToFit()
            }
        }
    }
}

struct SummaryScreen_Previews: PreviewProvider {
    static var previews: some View {
        SummaryScreen()
    }
}
