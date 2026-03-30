//
//  ReviewSheet.swift
//  reverbapp
//
//  Created by Aluno-01 on 30/03/26.
//

import SwiftUI

struct ReviewSheet: View {
    var body: some View {
        HStack{
            Image(.album1)
                .resizable()
                .frame(width: 64, height: 64)
                .cornerRadius(10)
            VStack(alignment: .leading ,spacing: 6){
                Text("Definitely Maybe")
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .font(Font.system(size: 16))
                Text("600 reviews")
                    .fontWeight(.bold)
                    .foregroundStyle(.white.opacity(0.8))
                    .font(Font.system(size: 12))
            }
            Spacer()
            HStack{
                Text("4.6")
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.white)
                Image(systemName: "star.fill")
                    .foregroundStyle(LinearGradient(colors: [.gradientLinear1, .gradientLinear2], startPoint: .leading, endPoint: .bottom))
                    .font(.system(size: 16))
            }
            }
        .padding(.horizontal)
        }
    }


#Preview {
    ReviewSheet()
}
