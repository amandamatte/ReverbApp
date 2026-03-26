import SwiftUI

struct Home: View {
    let sections: [AlbumSection] = [
        AlbumSection(
            title: Text("Reverb ").foregroundColor(.red).bold() + Text("recommends").foregroundColor(.white).bold(),
            albums: [
                Album(title: "R.A.M", artist: "Daft Punk", imageName: "ram"),
                Album(title: "Igor", artist: "Tyler, the Creator", imageName: "igor"),
                Album(title: "Melophobia", artist: "Cage the Elephant", imageName: "melophobia")
            ]
        ),
        AlbumSection(
            title: Text("Since you like ").foregroundColor(.gray).bold() + Text("A$AP Rocky").foregroundColor(.orange).bold(),
            albums: [
                Album(title: "Astroworld", artist: "Travis Scott", imageName: "astroworld"),
                Album(title: "Scorpion", artist: "Drake", imageName: "scorpion"),
                Album(title: "I am > I was", artist: "21 Savage", imageName: "iam")
            ]
        ),
        AlbumSection(
            title: Text("Since you like ").foregroundColor(.gray).bold() + Text("The Strokes").foregroundColor(.red).bold(),
            albums: [
                Album(title: "test", artist: "Radiohead", imageName: ""),
                Album(title: "", artist: "Tame Impala", imageName: "currents"),
                Album(title: "", artist: "Weezer", imageName: "weezer")
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
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 30) {
                    
            
                    Button(action: {
                    
                    }) {
                        HStack(spacing: 8) {
                            Text("My Activity")
                                .fontWeight(.medium)
                            Image(systemName: "clock.arrow.circlepath")
                        }
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .background(Color.white.opacity(0.1))
                        .clipShape(Capsule())
                    }
                    .padding(.top, 10)
                    
                 
                    ForEach(sections) { section in
                        SectionView(section: section)
                    }
                    
                
                    Spacer().frame(height: 100)
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
