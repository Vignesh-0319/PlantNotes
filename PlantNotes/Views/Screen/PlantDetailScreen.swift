//
//  PlantDetailScreen.swift
//  PlantNotes
//
//  Created by SUPER CHARGE on 23/09/26.
//

import SwiftUI

struct PlantDetailScreen: View {
    @Binding var plant: Plant

    var body: some View {
        List {
            Section {
                VStack(spacing: 8) {
                    PlantAvatar(iconName: plant.roomIcon, isThirsty: plant.needsWater, size: 100)
                    Text(plant.statusText)
                        .font(.subheadline)
                        .foregroundStyle(plant.needsWater ? .orange : .gray)
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 8)
            }
            
            Section {
                DetailRow(label: "Room", value: plant.roomTitle)
                DetailRow(label: "Light", value: plant.lightTitle)
                DetailRow(label: "Schedule", value: plant.scheduleText)
                DetailRow(label: "Last watered", value: plant.lastWateredText)
            } header: {
                Text("Care Details")
            } footer: {
                Text(plant.lightAdvice)
            }
            
            Section {
                Toggle("Favorite", isOn: $plant.isFavorite)
                TextField("Add a note about this plant", text: $plant.notes, axis: .vertical)
            } header: {
                Text("My Notes")
            }
            
            CareActionsSection(plant: plant)
        }
        .navigationTitle(plant.name)
    }
}
