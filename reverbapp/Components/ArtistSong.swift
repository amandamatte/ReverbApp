//
//  ArtistSong.swift
//  reverbapp
//
//  Created by Amanda Matte on 27/03/26.
//

import SwiftUI

struct ArtistSong: View {
    var title: String
    var subtitle: String
    var value: String
    var isRating: Bool = false
    
    var body: some View {
        HStack{
            VStack(alignment: .leading ,spacing: 6){
                Text(title)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .font(Font.system(size: 14))
                Text(subtitle)
                    .fontWeight(.regular)
                    .foregroundStyle(.gray)
                    .font(Font.system(size: 12))
            }
            Spacer()
            
            Text(value)
                .font(.system(size: 16, weight: .bold))
                .foregroundColor(.white)
            
            if isRating {
                Image(systemName: "star.fill")
                    .foregroundStyle(LinearGradient(colors: [.gradientLinear1, .gradientLinear2], startPoint: .leading, endPoint: .bottom))
                    .font(.system(size: 16))
                }
            }
        .padding(.horizontal)
        }
    }


#Preview {
    ArtistSong(title: "Song name", subtitle: "Albumname", value: "4.6", isRating: true)
}
