import SwiftUI

struct Home: View {
    let sections: [AlbumSection] = [
        AlbumSection(
            title: "Reverb recommends",
            albums: [
                Album(title: "R.A.M", artist: "Daft Punk", imageName: "DaftPunk"),
                Album(title: "Igor", artist: "Tyler, the Creator", imageName: "Tyler"),
                Album(title: "Melophobia", artist: "Cage the Elephant", imageName: "Cage")
            ]
        ),
        AlbumSection(
            title: "Since you like A$AP Rocky",
            albums: [
                Album(title: "Astroworld", artist: "Travis Scott", imageName: "Travis"),
                Album(title: "Scorpion", artist: "Drake", imageName: "Drake"),
                Album(title: "I am > I was", artist: "21 Savage", imageName: "Savage")
            ]
        ),
        AlbumSection(
            title: "Since you like The Strokes",
            albums: [
                Album(title: "OK Computer", artist: "Radiohead", imageName: "Radiohead"),
                Album(title: "Currents", artist: "Tame Impala", imageName: "TameImpala"),
                Album(title: "Blue Album", artist: "Weezer", imageName: "Weezer")
            ]
        )
    ]
    
    var body: some View {
        ZStack {
            
            LinearGradient(
                stops: [
                    Gradient.Stop(color: Color("GradientLinear3").opacity(0.98), location: 0.0),
                    Gradient.Stop(color: Color("GradientLinear4"), location: 0.56)
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack(spacing: 30) {
                
                Button(action: {
                    
                }) {
                    HStack(spacing: 8) {
                        Text("My Activity")
                            .fontWeight(.medium)
                        Image(systemName: "clock.arrow.circlepath")
                    }
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                    .background(Color.white.opacity(0.1))
                    .clipShape(Capsule())
                }
                .padding(.top, 10)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    ForEach(sections) { section in
                        SectionView(title: section.title, albumSection: section)
                    }
                }
            }
        }
    }
    
    
    struct Home_Previews: PreviewProvider {
        static var previews: some View {
            Home()
        }
    }
}
