//
//  Profile.swift
//  reverbapp
//
//  Created by Amanda Matte on 26/03/26.
//

import SwiftUI

struct Profile: View {
    
    let favoriteAlbumSection: AlbumSection =
        AlbumSection(
            title: "Favorite Albums",
            albums: [
                Album(title: "R.A.M", artist: "Daft Punk", imageName: "DaftPunk"),
                Album(title: "Igor", artist: "Tyler, the Creator", imageName: "Tyler"),
                Album(title: "Melophobia", artist: "Cage the Elephant", imageName: "Cage")
            ]
        )
    
    let favoriteMusicSection: AlbumSection =
        AlbumSection(
            title: "Favorite Songs",
            albums: [
                Album(title: "STARGAZING", artist: "Travis Scott", imageName: "Travis"),
                Album(title: "God's Plan", artist: "Drake", imageName: "Drake"),
                Album(title: "ball w/o you", artist: "21 Savage", imageName: "Savage")
            ]
        )
    
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
                VStack(spacing: 8) {
                    Image("Profile")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 120, height: 120)
                        .clipShape(Circle())
                        .padding(.top, 20)
                                        
                    Text("Amanda Matté")
                        .fontWeight(.bold)
                        .font(Font.system(size: 16))
                        .foregroundColor(.white)
                                        
                    Text("a.mandamatte")
                        .fontWeight(.medium)
                        .font(Font.system(size: 13))
                        .foregroundStyle(LinearGradient(colors: [.gradientLinear1, .gradientLinear2], startPoint: .leading, endPoint: .bottom))
                                        
                    Text("On Reverb since 26/03/2026")
                        .fontWeight(.medium)
                        .font(Font.system(size: 12))
                        .foregroundColor(.white.opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top, 10)
                
                ScrollView(.vertical, showsIndicators: false) {
                    ReviewSection()
                    
                    SectionView(title: "Favorite Albums", albumSection: favoriteAlbumSection)
                    
                    SectionView(title: "Favorite Songs", albumSection: favoriteMusicSection)
                }
            }
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
