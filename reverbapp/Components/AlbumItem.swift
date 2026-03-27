//
//  AlbumItem.swift
//  reverbapp
//
//  Created by Aluno-09 on 26/03/26.
//

import SwiftUI

struct AlbumItem: View {
    let album: Album
    
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            GeometryReader { geometry in
                if UIImage(named: album.imageName) != nil {
                    Image(album.imageName)
                        .resizable()
                        .scaledToFill()
                } else {
                    Rectangle()
                        .fill(Color.white.opacity(0.1))
                        .overlay(
                            Image(systemName: "music.note")
                                .foregroundColor(.gray)
                                .font(.largeTitle)
                        )
                }
            }
            .frame(width: 140, height: 140)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(spacing: 4) {
                Text(album.title)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .font(Font.system(size: 12))
                    .lineLimit(1)
                
                Text(album.artist)
                    .font(.caption)
                    .fontWeight(.regular)
                    .foregroundColor(.white.opacity(0.6))
                    .font(Font.system(size: 11))
                    .lineLimit(1)
            }
        }
        .frame(width: 140)
    }
}

