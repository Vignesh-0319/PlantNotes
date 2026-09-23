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
