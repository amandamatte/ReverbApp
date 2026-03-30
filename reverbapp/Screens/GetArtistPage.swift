import SwiftUI

struct Artist: Identifiable, Hashable {
    var id = UUID()
    var imageName: String
    var name: String
}

struct ArtistComponent: View {
    var imageName: String
    var name: String
    var selectedArtists: Bool
    
    var body: some View {
        VStack {
            Image(imageName)
            Spacer()
            Text(name)
                .foregroundStyle(selectedArtists ? .gradientLinear2 : .white)
                .fontWeight(.medium)
                .font(Font.system(size: 9.17))
        }
    }
}

struct GetArtistPage: View {
    
    @State private var selectedArtists: Set<Artist> = []
    
    let allArtists: [Artist] = [
        Artist(imageName: "Travis" , name: "Travis Scott"),
        Artist(imageName: "Franz" , name: "Franz Ferdinand"),
        Artist(imageName: "Kings" , name: "Kings of Leon"),
        Artist(imageName: "Oasis" , name: "Oasis"),
        Artist(imageName: "DaftPunk" , name: "Daft Punk"),
        Artist(imageName: "Interpol" , name: "Interpol"),
        Artist(imageName: "Wallows" , name: "Wallows"),
        Artist(imageName: "MacMiller" , name: "Mac Miller"),
        Artist(imageName: "Joji" , name: "Joji"),
    ]
    
    let columns = [
        GridItem(.adaptive(minimum: 100), spacing: 10)
    ]
    
    var body: some View {
        NavigationStack {
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
                
                VStack(spacing: 24) {
                    
                    HStack(spacing: 8) {
                        Capsule()
                            .fill(Color.white)
                            .frame(width: 40, height: 4)
                        Capsule()
                            .fill(LinearGradient(colors: [.gradientLinear1, .gradientLinear2], startPoint: .leading, endPoint: .bottom))
                            .frame(width: 40, height: 4)
                    }
                    .padding(.top, 10)
                    
                    HStack {
                        VStack(alignment: .leading, spacing: 6) {
                            Text("What artists do you like?")
                                .font(Font.system(size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            
                            Text("Select at least 5 items")
                                .fontWeight(.bold)
                                .font(Font.system(size: 12))
                                .foregroundColor(.white.opacity(0.8))
                        }
                        
                        Spacer()
                        
                        ZStack {
                            Circle()
                                .stroke(Color.gray.opacity(0.3), lineWidth: 4)
                            
                            Circle()
                                .trim(from: 0, to: min(CGFloat(selectedArtists.count) / 5.0, 1.0))
                                .stroke(LinearGradient(colors: [.gradientLinear1, .gradientLinear2], startPoint: .leading, endPoint: .bottom), lineWidth: 2)
                                .rotationEffect(.degrees(-90))
                                .animation(.easeInOut, value: selectedArtists.count)
                            
                            Text("\(selectedArtists.count)")
                                .font(.headline)
                                .foregroundColor(.white)
                        }
                        .frame(width: 44, height: 44)
                    }
                    .padding(.horizontal)
                    
                    Spacer()
                    
                    ScrollView(showsIndicators: false) {
                        LazyVGrid(columns: columns, spacing: 16) {
                            ForEach(allArtists) { artist in
                                ArtistComponent(imageName: artist.imageName, name: artist.name, selectedArtists: selectedArtists.contains(artist))
                                    .onTapGesture {
                                        if selectedArtists.contains(artist) {
                                            selectedArtists.remove(artist)
                                        } else {
                                            selectedArtists.insert(artist)
                                        }
                                    }
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    VStack(spacing: 16) {
                        
                        NavigationLink(destination: TabBar().navigationBarBackButtonHidden(true)) {
                            ButtonComponent(title: "Next")
                        }
                        
                        // Substituí o Button por um NavigationLink aqui
                        NavigationLink(destination: TabBar().navigationBarBackButtonHidden(true)) {
                            Text("Skip")
                                .foregroundColor(Color(red: 0.95, green: 0.6, blue: 0.4))
                                .frame(maxWidth: .infinity)
                                .padding(.vertical, 16)
                                .background(Color.clear)
                                .clipShape(Capsule())
                                .overlay {
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(LinearGradient(colors: [.gradientLinear1, .gradientLinear2], startPoint: .leading, endPoint: .bottom), lineWidth: 2)
                                }
                        }
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 30)
                }
            }
        }
    }
}

#Preview {
    GetArtistPage()
}
