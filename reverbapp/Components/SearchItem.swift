//
//  SearchItem.swift
//  reverbapp
//
//  Created by Aluno-01 on 27/03/26.
//

import SwiftUI

struct SearchItem: View {
    var albumImage: ImageResource
    var title: String
    var subtitle: String
    var value: String
    var isRating: Bool = false
    
    var body: some View {
        HStack{
            Image(albumImage)
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(10)
            VStack(alignment: .leading ,spacing: 6){
                Text(title)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .font(Font.system(size: 14))
                Text(subtitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.white.opacity(0.8))
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
    SearchItem(albumImage: .kings, title: "Oasis", subtitle: "Artist", value: "4.6", isRating: true)
}
