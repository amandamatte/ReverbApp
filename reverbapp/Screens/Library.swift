//
//  Library.swift
//  reverbapp
//
//  Created by Aluno-01 on 27/03/26.
//

import SwiftUI

struct Library: View {
    
    @State private var searchText = ""
    
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
            VStack(spacing: 16) {
                HStack(spacing: 12) {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .medium))
                    
                    TextField("", text: $searchText, prompt: Text("Artists, songs, users").foregroundColor(.white))
                        .fontWeight(.bold)
                        .disabled(true)
                }
                .padding(.horizontal, 10)
                .padding(.vertical, 8)
                .background(.white.opacity(0.2))
                .clipShape(Capsule())
                .padding(.horizontal)
                
                ScrollView(.vertical, showsIndicators: false){
                    
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Discover something new")
                            .fontWeight(.bold)
                            .foregroundStyle(.white.opacity(0.8))
                            .font(Font.system(size: 14))
                        HStack(spacing: 30){
                            Image("Frame1")
                            Image("Frame2")
                        }
                    }
                    VStack{
                        HStack(spacing: 30){
                            Image("Frame3")
                            Image("Frame4")
                        }
                    }
                    .padding()
                    VStack(spacing: 20){
                        SearchItem(albumImage: .oasis, title: "Oasis", subtitle: "Artist", value: "4.6", isRating: true)
                        SearchItem(albumImage: .savage, title: "I am > I was", subtitle: "Album", value: "4.6", isRating: true)
                        SearchItem(albumImage: .profile, title: "Joji", subtitle: "Artist", value: "4.6", isRating: true)
                        SearchItem(albumImage: .tyler, title: "Igor", subtitle: "Album", value: "4.6", isRating: true)
                        SearchItem(albumImage: .drake, title: "Scorpion", subtitle: "Album", value: "4.6", isRating: true)
                        SearchItem(albumImage: .tameImpala, title: "Currents", subtitle: "Album", value: "4.6", isRating: true)
                        SearchItem(albumImage: .radiohead, title: "OK Computer", subtitle: "Album", value: "4.6", isRating: true)
                    }
                }
            }
        }
    }
}
    
#Preview {
    Library()
}

