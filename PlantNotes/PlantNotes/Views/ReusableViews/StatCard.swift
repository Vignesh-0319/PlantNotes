import SwiftUI

struct StatCard: View {
    let title: String
    let value: Int
    let iconName: String

    var body: some View {
        VStack(spacing: 6) {
            Image(systemName: iconName)
                .font(.title3)
                .foregroundStyle(.green)
            Text("\(value)")
                .font(.title2)
                .bold()
            Text(title)
                .font(.caption)
                .foregroundStyle(.secondary)
        }
        .cardStyle()
    }
}

