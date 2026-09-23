//
//  PlantFormatter.swift
//  PlantNotes
//
//  Created by SUPER CHARGE on 23/09/26.
//

import Foundation

struct PlantFormatter {
    func roomTitle(for room: PlantRoom) -> String {
        switch room {
        case .livingRoom: return "Living Room"
        case .bedroom: return "Bedroom"
        case .kitchen: return "Kitchen"
        case .balcony: return "Balcony"
        }
    }

    func roomIcon(for room: PlantRoom) -> String {
        switch room {
        case .livingRoom: return "sofa.fill"
        case .bedroom: return "bed.double.fill"
        case .kitchen: return "fork.knife"
        case .balcony: return "wind"
        }
    }

    func lightTitle(for light: LightLevel) -> String {
        switch light {
        case .low: return "Low"
        case .medium: return "Medium"
        case .bright: return "Bright"
        }
    }

    func lightAdvice(for light: LightLevel) -> String {
        switch light {
        case .low: return "Keep away from direct sun."
        case .medium: return "Bright, indirect light is best."
        case .bright: return "Loves direct sunshine."
        }
    }
}
