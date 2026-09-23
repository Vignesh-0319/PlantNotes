//
//  WaterIntervalPicker.swift
//  PlantNotes
//
//  Created by SUPER CHARGE on 23/09/26.
//

import SwiftUI

struct WaterIntervalPicker: View {
    @Binding var days: Int

    var body: some View {
        HStack {
            Text("Water every")
            Spacer()
            Picker("Water every", selection: $days) {
                ForEach(2...14, id: \.self) { number in
                    Text("\(number) days").tag(number)
                }
            }
            .pickerStyle(.menu)
        }
    }
}
