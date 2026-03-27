import SwiftUI

struct SectionView: View {
    let title: String
    let albumSection: AlbumSection
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HeaderView(title: title)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(albumSection.albums) { album in
                        AlbumItem(album: album)
                    }
                }
                .padding(.horizontal, 20)
            }
        }
    }
}
