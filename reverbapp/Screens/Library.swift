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
                .padding(.horizontal, 16)
                .padding(.vertical, 10)
                .background(.white.opacity(0.2))
                .clipShape(Capsule())
                .padding(.horizontal)
                
                VStack{
                    HStack(spacing: 16){
                        Image("Frame1")
                        Image("Frame2")
                    }
                }
                VStack{
                    HStack(spacing: 16){
                        Image("Frame3")
                        Image("Frame4")
                    }
                }
            }

        }
    }
}
    
#Preview {
    Library()
}

