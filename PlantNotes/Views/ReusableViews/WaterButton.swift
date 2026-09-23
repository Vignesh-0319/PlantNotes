//
//  WaterButton.swift
//  PlantNotes
//
//  Created by SUPER CHARGE on 23/09/26.
//

import SwiftUI

struct WaterButton: View {
    let plant: Plant
    @Environment(GardenStore.self) private var store

    var body: some View {
        Button {
            store.water(plant)
        } label: {
            HStack {
                Image(systemName: "drop.fill")
                Text(plant.wateredToday ? "Watered today" : "Water now")
            }
        }
        .disabled(plant.wateredToday)
    }
}
