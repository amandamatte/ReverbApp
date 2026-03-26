import SwiftUI

struct Album: Identifiable {
    let id = UUID()
    let title: String
    let artist: String
    let imageName: String
}

struct AlbumSection: Identifiable {
    let id = UUID()
    let title: Text
    let albums: [Album]
}
