//
//  PlantsListScreen.swift
//  PlantNotes
//
//  Created by SUPER CHARGE on 23/09/26.
//

import SwiftUI

struct PlantListScreen: View {
    @Environment(GardenStore.self) private var store
    @State private var searchText = ""

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                GardenSummaryGrid()
                    .padding()
                
                Divider()
                
                PlantListView(store: store, searchText: searchText)
            }
            .navigationTitle("PlantNotes")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Pass a Day") {
                        store.passOneDay()
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        AddPlantScreen()
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .searchable(text: $searchText, prompt: "Search plants or rooms")
        }
    }
}
