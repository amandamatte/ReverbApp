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
                
                HStack{
                Text("Definitely Maybe")
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
                    .font(Font.system(size: 18))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                Text("4.6")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.white)
                    
                Image(systemName: "star.fill")
                    .foregroundStyle(LinearGradient(colors: [.gradientLinear1, .gradientLinear2], startPoint: .leading, endPoint: .bottom))
                    .font(.system(size: 24))
                }
                
                Text("Oasis")
                    .foregroundStyle(LinearGradient(colors: [.gradientLinear1, .gradientLinear2], startPoint: .leading, endPoint: .bottom))
                    .fontWeight(.bold)
                    .font(Font.system(size: 12))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Button {
                    isReviewSheet = true
                } label: {
                    ButtonComponent(title: "Add review")
                }
            }
            .padding(.top, 150)
            .padding(.horizontal, 18)
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
