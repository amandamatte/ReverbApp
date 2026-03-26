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
            // Capa do Álbum
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
            
            // Textos
            VStack(spacing: 4) {
                Text(album.title)
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .lineLimit(1)
                
                Text(album.artist)
                    .font(.caption)
                    .foregroundColor(.gray)
                    .lineLimit(1)
            }
        }
        .frame(width: 140)
    }
}

