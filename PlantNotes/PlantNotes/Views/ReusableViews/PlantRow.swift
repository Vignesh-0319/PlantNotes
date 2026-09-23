//
//  PlantRow.swift
//  PlantNotes
//
//  Created by SUPER CHARGE on 23/09/26.
//

import SwiftUI

struct PlantRow: View {
    let plant: Plant

    var body: some View {
        HStack(spacing: 12) {
            PlantAvatar(iconName: plant.roomIcon, isThirsty: plant.needsWater, size: 44)
            
            VStack(alignment: .leading, spacing: 3) {
                HStack(spacing: 4) {
                    Text(plant.name)
                        .font(.headline)
                    if plant.isFavorite {
                        Image(systemName: "star.fill")
                            .font(.caption)
                            .foregroundStyle(.yellow)
                    }
                }
                Text(plant.roomTitle)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            
            Spacer()
            
            Text(plant.statusText)
                .font(.caption)
                .foregroundStyle(plant.needsWater ? .orange : .gray)
        }
        .padding(.vertical, 4)
    }
}
