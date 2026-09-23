//
//  Plant.swift
//  PlantNotes
//
//  Created by SUPER CHARGE on 23/09/26.
//

import Foundation

struct Plant: Identifiable {
    let id = UUID()
    let formatter = PlantFormatter()
    var name: String
    var room: PlantRoom
    var light: LightLevel
    var waterEveryDays: Int
    var daysSinceWatered: Int
    var isFavorite: Bool = false
    var notes: String = ""

    var roomTitle: String { formatter.roomTitle(for: room) }
    var roomIcon: String { formatter.roomIcon(for: room) }
    var lightTitle: String { formatter.lightTitle(for: light) }
    var lightAdvice: String { formatter.lightAdvice(for: light) }
    var needsWater: Bool { daysSinceWatered >= waterEveryDays }
    var daysUntilWater: Int { max(0, waterEveryDays - daysSinceWatered) }
    
    var statusText: String {
        if needsWater { return "Needs water" }
        if daysUntilWater == 1 { return "Water tomorrow" }
        return "Water in \(daysUntilWater) days"
    }
    
    var scheduleText: String { "Every \(waterEveryDays) days" }
    
    var lastWateredText: String {
        if daysSinceWatered == 0 { return "Today" }
        if daysSinceWatered == 1 { return "Yesterday" }
        return "\(daysSinceWatered) days ago"
    }
    
    var wateredToday: Bool { daysSinceWatered == 0 }
}
