//
//  GardenSummaryGrid.swift
//  PlantNotes
//
//  Created by SUPER CHARGE on 23/09/26.
//

import SwiftUI

struct GardenSummaryGrid: View {
    @Environment(GardenStore.self) private var store
    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]

    var body: some View {
        LazyVGrid(columns: columns, spacing: 12) {
            StatCard(title: "Plants", value: store.totalPlants, iconName: "leaf.fill")
            StatCard(title: "Thirsty", value: store.thirstyCount, iconName: "drop.fill")
            StatCard(title: "Favorites", value: store.favoriteCount, iconName: "star.fill")
        }
    }
}
