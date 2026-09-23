//
//  PlantListView.swift
//  PlantNotes
//
//  Created by SUPER CHARGE on 23/09/26.
//

import SwiftUI

struct PlantListView: View {
    @Bindable var store: GardenStore
    let searchText: String
    
    var body: some View {
        List {
            Section {
                ForEach($store.plants) { $plant in
                    if store.matches(plant: plant, searchText: searchText) {
                        NavigationLink {
                            PlantDetailScreen(plant: $plant)
                        } label: {
                            PlantRow(plant: plant)
                        }
                    }
                }
            } header: {
                Text("My Plants")
            } footer: {
                Text("Tap a plant to see its care details. A blue drop means it needs water.")
            }
            
            Section {
                Text("Water in the morning so leaves dry before night.")
                Text("Push a finger into the soil. Only water if it feels dry.")
                Text("Turn pots a little each week so plants grow evenly.")
            } header: {
                Text("Care Tips")
            } footer: {
                Text("These tips work for most indoor plants.")
            }
        }
    }
}
