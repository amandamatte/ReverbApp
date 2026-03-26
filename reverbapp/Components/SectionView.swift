import SwiftUI

struct SectionView: View {
    let section: AlbumSection
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            // Cabeçalho da Sessão
            HStack {
                section.title
                    .font(.title3)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }
            .padding(.horizontal, 20)
            
            // Carrossel Horizontal
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(section.albums) { album in
                        AlbumItem(album: album)
                    }
                }
                .padding(.horizontal, 20)
            }
        }
    }
}
