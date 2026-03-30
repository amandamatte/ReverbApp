//
//  AlbumPage.swift
//  reverbapp
//
//  Created by Aluno-01 on 30/03/26.
//

import SwiftUI

struct AlbumPage: View {
    
    @State var isReviewSheet: Bool = false
    
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

            VStack {
                Image(.album1)
                    .resizable()
                    .frame(width: 168, height: 168)
                    .padding(.top, 48)
                    .padding(.bottom, 16)
                
                HStack{
                Text("Definitely Maybe")
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
                    .font(Font.system(size: 18))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                Text("4.6")
                    .font(.system(size: 23, weight: .bold))
                    .foregroundColor(.white)
                    .padding(.top, 5)
                    
                Image(systemName: "star.fill")
                    .foregroundStyle(LinearGradient(colors: [.gradientLinear1, .gradientLinear2], startPoint: .leading, endPoint: .bottom))
                    .font(.system(size: 23))
                }
                .padding(.horizontal, 18)
                
                Text("Oasis")
                    .foregroundStyle(LinearGradient(colors: [.gradientLinear1, .gradientLinear2], startPoint: .leading, endPoint: .bottom))
                    .fontWeight(.bold)
                    .font(Font.system(size: 12))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 18)
                    .padding(.bottom, 10)
                
                Button {
                    isReviewSheet = true
                } label: {
                    HStack{
                        Image(systemName: "star.circle.fill")
                        Text("Add review")
                    }
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(.horizontal, 130)
                        .padding(.vertical, 16)
                        .background(
                            LinearGradient(colors: [.gradientLinear1, .gradientLinear2], startPoint: .leading, endPoint: .bottom), in: Capsule()
                        )
                }
                .padding(.bottom, 10)
                ScrollView{
                    VStack(spacing: 18){
                        HeaderView(title: "About")
                        Text("Definitely Maybe is the debut studio album by the English rock band Oasis, released on 29 August 1994 by Creation Records.")
                            .padding(.horizontal, 13)
                            .foregroundStyle(.white.opacity(0.8))
                            .fontWeight(.regular)
                            .font(.system(size: 13))
                        HeaderView(title: "Songs")
                        HeaderView(title: "Ratings")
                        Image(.frame5)
                        Image(.frame6)
                        
                    }
                }
            }
            .sheet(isPresented: $isReviewSheet) {
                ReviewSheet()
                    .presentationDetents([.medium])
            }
            Spacer()
        }
    }
}

#Preview {
    AlbumPage()
}
