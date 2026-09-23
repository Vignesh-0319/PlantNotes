//
//  GardenStore.swift
//  PlantNotes
//
//  Created by SUPER CHARGE on 23/09/26.
//

import Foundation
import Observation

@Observable
final class GardenStore {
    var plants: [Plant] = [
        Plant(name: "Monstera", room: .livingRoom, light: .medium, waterEveryDays: 7, daysSinceWatered: 3, isFavorite: true),
        Plant(name: "Snake Plant", room: .bedroom, light: .low, waterEveryDays: 14, daysSinceWatered: 14),
        Plant(name: "Basil", room: .kitchen, light: .bright, waterEveryDays: 2, daysSinceWatered: 1),
        Plant(name: "Pothos", room: .livingRoom, light: .low, waterEveryDays: 5, daysSinceWatered: 6),
        Plant(name: "Aloe Vera", room: .balcony, light: .bright, waterEveryDays: 10, daysSinceWatered: 2),
        Plant(name: "Peace Lily", room: .bedroom, light: .medium, waterEveryDays: 4, daysSinceWatered: 4)
    ]

    var totalPlants: Int { plants.count }
    var thirstyCount: Int { plants.filter { $0.needsWater }.count }
    var favoriteCount: Int { plants.filter { $0.isFavorite }.count }

    func water(_ plant: Plant) {
        if let index = plants.firstIndex(where: { $0.id == plant.id }) {
            plants[index].daysSinceWatered = 0
        }
    }

    func passOneDay() {
        for index in plants.indices {
            plants[index].daysSinceWatered += 1
        }
    }
    
    func matches(plant: Plant, searchText: String) -> Bool {
        let trimmed = searchText.trimmingCharacters(in: .whitespaces)
        if trimmed.isEmpty { return true }
        return plant.name.localizedCaseInsensitiveContains(trimmed) || plant.roomTitle.localizedCaseInsensitiveContains(trimmed)
    }
    
    func addPlant(name: String, room: PlantRoom, light: LightLevel, waterEveryDays: Int) {
        let trimmedName = name.trimmingCharacters(in: .whitespaces)
        guard !trimmedName.isEmpty else { return }
        
        let newPlant = Plant(name: trimmedName, room: room, light: light, waterEveryDays: waterEveryDays, daysSinceWatered: 0)
        plants.append(newPlant)
    }
}
