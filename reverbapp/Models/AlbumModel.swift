import SwiftUI

struct Album: Identifiable {
    let id = UUID()
    let title: String
    let artist: String
    let imageName: String
}

struct AlbumSection: Identifiable {
    let id = UUID()
    let title: String
    let albums: [Album]
}

struct ReviewTab: Identifiable {
    let id = UUID()
    let title: Text
}
struct ReviewStats {
    let albumsCount: Int
    let songsCount: Int
    let artistsCount: Int
    let avgRating: Double
}
