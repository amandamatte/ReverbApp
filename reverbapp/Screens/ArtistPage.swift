//
//  ArtistPage.swift
//  reverbapp
//
//  Created by Amanda Matte on 27/03/26.
//

import SwiftUI

struct ArtistPage: View {
    let favoriteAlbumSection: AlbumSection =
        AlbumSection(
            title: "Albums",
            albums: [
                Album(title: "Definetely Maybe", artist: "1994", imageName: "Album1"),
                Album(title: "(What's The Story) Morning Glory?", artist: "1995",  imageName: "Album2"),
                Album(title: "Standing on the Shoulder of Giants", artist: "2000", imageName: "Album3")
            ]
        )
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                Image(.oasis)
                    .resizable()
                    .frame(width: 400, height: 400)
                    .ignoresSafeArea()
                VStack(spacing: -30){
                    Spacer()
                    HStack{
                    Text("Oasis")
                        .foregroundStyle(.white)
                        .fontWeight(.bold)
                        .font(Font.system(size: 46))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    
                    Text("4.000 reviews")
                        .foregroundStyle(.gray)
                        .fontWeight(.bold)
                        .font(Font.system(size: 12))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        
                    Text("4.6")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.white)
                        
                    Image(systemName: "star.fill")
                        .foregroundStyle(LinearGradient(colors: [.gradientLinear1, .gradientLinear2], startPoint: .leading, endPoint: .bottom))
                        .font(.system(size: 24))
                    }
                }
            }
            
            Rectangle()
                .clipShape(UnevenRoundedRectangle(cornerRadii: .init(topLeading: 30, bottomLeading: 0, bottomTrailing: 0, topTrailing: 30)))
                .offset(y: -70)
                .frame(height: 600)
                .overlay {
                    ScrollView(.vertical) {
                        VStack(spacing:20) {
                            Text("Best rated songs")
                                .foregroundStyle(.white.opacity(0.75))
                                .fontWeight(.bold)
                                .font(Font.system(size: 18))
                            
                            ArtistSong(title: "Wonderwall / Remastered", subtitle: "(What's the Story) Morning Glory?", value: "4.6", isRating: true)
                            ArtistSong(title: "Don't Look Back in Anger / Remastered", subtitle: "(What's the Story) Morning Glory?", value: "4.6", isRating: true)
                            ArtistSong(title: "Stop Crying Your Heart Out", subtitle: "Heathen Chemistry", value: "4.6", isRating: true)
                            ArtistSong(title: "Champagne Supernova / Remastered", subtitle: "(What's the Story) Morning Glory?", value: "4.6", isRating: true)
                            ArtistSong(title: "Married with Children", subtitle: "Definitely Maybe", value: "4.6", isRating: true)
                            
                            ScrollView(.vertical, showsIndicators: false) {
                                SectionView(title: "Albums", albumSection: favoriteAlbumSection)
                                }
                            }
                        }
                    }
                    .foregroundStyle(LinearGradient(
                        stops: [
                            Gradient.Stop(color: Color("GradientLinear3").opacity(0.98), location: 0.0),
                            Gradient.Stop(color: Color("GradientLinear4"), location: 0.56)
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    ))
                
            }
        }
    }
    #Preview {
        ArtistPage()
    }

