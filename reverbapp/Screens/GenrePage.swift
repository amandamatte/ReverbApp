import SwiftUI

struct GenrePage: View {
    @State private var selectedGenres: Set<String> = []
    
    let allGenres = [
        "Samba", "Pop", "Indie Rock", "Gospel", "Country",
        "J-Rock", "Soundtracks", "Classical", "Synth-pop",
        "EDM", "Metal", "Hip-hop", "R&B", "New Wave", "Blues",
        "Reggae", "Jazz Fusion", "Disco", "Folk", "K-Pop",
        "Funk", "Soul", "Western", "Punk", "Vaporwave",
        "J-Pop", "Christmas", "Afrohouse", "Death metal",
        "Children's", "Hardstyle", "2000s pop", "Boombap"
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
                            .fill(LinearGradient(colors: [.gradientLinear1, .gradientLinear2], startPoint: .leading, endPoint: .bottom))
                            .frame(width: 40, height: 4)
                        Capsule()
                            .fill(Color.gray.opacity(0.4))
                            .frame(width: 40, height: 4)
                    }
                    .padding(.top, 10)

                    HStack {
                        VStack(alignment: .leading, spacing: 6) {
                            Text("Select your favorite genres")
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
                                .trim(from: 0, to: min(CGFloat(selectedGenres.count) / 5.0, 1.0))
                                .stroke(LinearGradient(colors: [.gradientLinear1, .gradientLinear2], startPoint: .leading, endPoint: .bottom), lineWidth: 2)
                                .rotationEffect(.degrees(-90))
                                .animation(.easeInOut, value: selectedGenres.count)
                            
                            Text("\(selectedGenres.count)")
                                .font(.headline)
                                .foregroundColor(.white)
                        }
                        .frame(width: 44, height: 44)
                    }
                    .padding(.horizontal)

                    ScrollView(showsIndicators: false) {
                        LazyVGrid(columns: columns, spacing: 12) {
                            ForEach(allGenres, id: \.self) { genre in
                                let isSelected = selectedGenres.contains(genre)
                                
                                Text(genre)
                                    .font(.system(size: 14, weight: .semibold))
                                    .frame(maxWidth: .infinity)
                                    .padding(.vertical, 10)
                                    .background(isSelected ? Color.white : Color.white.opacity(0.15))
                                    .foregroundColor(isSelected ? Color.black : Color.gray)
                                    .clipShape(Capsule())
                                    .onTapGesture {
                                        withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
                                            if isSelected {
                                                selectedGenres.remove(genre)
                                            } else {
                                                selectedGenres.insert(genre)
                                            }
                                        }
                                    }
                            }
                        }
                        .padding(.horizontal)
                    }

                    VStack(spacing: 16) {
                        NavigationLink(destination: GetArtistPage()) {
                            Text("Next")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding(.vertical, 16)
                                .background(
                                    LinearGradient(colors: [.gradientLinear1, .gradientLinear2], startPoint: .leading, endPoint: .bottom), in: .capsule)
                                .opacity(selectedGenres.count < 5 ? 0.5 : 1.0)
                        }
                        .disabled(selectedGenres.count < 5)

                        NavigationLink(destination: GetArtistPage()) {
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
            .toolbar(.hidden, for: .navigationBar)
        }
    }
}

#Preview {
    GenrePage()
}
