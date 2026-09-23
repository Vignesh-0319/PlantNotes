//
//  PlantNotesApp.swift
//  PlantNotes
//
//  Created by SUPER CHARGE on 23/09/26.
//

import SwiftUI

@main
struct PlantNotesApp: App {
    @State private var store = GardenStore()

    var body: some Scene {
        WindowGroup {
            PlantListScreen()
                .environment(store)
        }
    }
}
