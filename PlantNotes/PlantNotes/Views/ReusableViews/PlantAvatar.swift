
import SwiftUI

struct PlantAvatar: View {
    let iconName: String
    let isThirsty: Bool
    let size: CGFloat

    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ZStack {
                Circle()
                    .fill(isThirsty ? Color.orange.opacity(0.2) : Color.green.opacity(0.2))
                Image(systemName: iconName)
                    .font(.system(size: size * 0.4))
                    .foregroundStyle(isThirsty ? .orange : .green)
            }
            .frame(width: size, height: size)

            if isThirsty {
                Image(systemName: "drop.fill")
                    .font(.system(size: size * 0.3))
                    .foregroundStyle(.blue)
            }
        }
    }
}
