//
//  AddPlantScreen.swift
//  PlantNotes
//
//  Created by SUPER CHARGE on 23/09/26.
//

import SwiftUI

struct AddPlantScreen: View {
    @Environment(GardenStore.self) private var store
    @Environment(\.dismiss) private var dismiss

    @State private var name = ""
    @State private var room: PlantRoom = .livingRoom
    @State private var light: LightLevel = .medium
    @State private var waterEveryDays = 7
    let formatter = PlantFormatter()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            TextField("Plant name", text: $name)
                .textFieldStyle(.roundedBorder)

            HStack {
                Text("Room")
                Spacer()
                Picker("Room", selection: $room) {
                    ForEach(PlantRoom.allCases, id: \.self) { option in
                        Text(formatter.roomTitle(for: option)).tag(option)
                    }
                }
                .pickerStyle(.menu)
            }
            
            Text("Light")
            Picker("Light", selection: $light) {
                ForEach(LightLevel.allCases, id: \.self) { option in
                    Text(formatter.lightTitle(for: option)).tag(option)
                }
            }
            .pickerStyle(.segmented)
            
            WaterIntervalPicker(days: $waterEveryDays)
            Divider()
            
            Button("Save Plant") {
                store.addPlant(name: name, room: room, light: light, waterEveryDays: waterEveryDays)
                dismiss()
            }
            .buttonStyle(.borderedProminent)
            .frame(maxWidth: .infinity)
            .disabled(name.isEmpty)
            
            Spacer()
        }
        .padding()
        .navigationTitle("New Plant")
    }
}
