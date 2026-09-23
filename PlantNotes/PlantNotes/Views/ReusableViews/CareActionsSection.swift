//
//  CareActionsSection.swift
//  PlantNotes
//
//  Created by SUPER CHARGE on 23/09/26.
//

import SwiftUI

struct CareActionsSection: View {
    let plant: Plant

    var body: some View {
        Section {
            WaterButton(plant: plant)
        } header: {
            Text("Care Actions")
        } footer: {
            Text("Watering resets the countdown to the next watering.")
        }
    }
}
