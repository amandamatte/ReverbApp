import SwiftUI

struct FloatingTabBar: View {
    var body: some View {
        HStack {
            TabBarItem(icon: "house.fill", text: "Home", isSelected: true)
            Spacer()
            TabBarItem(icon: "music.note.list", text: "Library", isSelected: false)
            Spacer()
            TabBarItem(icon: "person.crop.circle", text: "Profile", isSelected: false)
        }
        .padding(.horizontal, 30)
        .padding(.vertical, 12)
        .background(.ultraThinMaterial)
        .environment(\.colorScheme, .dark)
        .clipShape(Capsule())
        .padding(.horizontal, 40)
        .padding(.bottom, 10)
        .shadow(color: .black.opacity(0.5), radius: 10, x: 0, y: 5)
    }
}

struct TabBarItem: View {
    let icon: String
    let text: String
    let isSelected: Bool
    
    var body: some View {
        VStack(spacing: 4) {
            Image(systemName: icon)
                .font(.system(size: 20))
                .foregroundColor(isSelected ? .blue : .gray)
            
            Text(text)
                .font(.caption2)
                .fontWeight(isSelected ? .bold : .regular)
                .foregroundColor(isSelected ? .blue : .gray)
        }
    }
}
