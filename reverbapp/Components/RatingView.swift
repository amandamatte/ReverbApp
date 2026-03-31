//
//  RatingView.swift
//  reverbapp
//
//  Created by Aluno-01 on 30/03/26.
//

import SwiftUI

struct RatingView: View {
    
    @Binding var rating: Int
    
    var maximumRating = 5
    var offColor = Color.gray.opacity(0.3)
    var onColor = Color.orange
    
    var body: some View {
        HStack{
            Text("Rate")
                .foregroundColor(.white)
                .font(.system(size: 14))
                .fontWeight(.medium)
            
            Spacer()
            
            ForEach(1..<maximumRating + 1, id: \.self) { index in
                Image(systemName: "star.fill")
                    .foregroundColor(index > rating ? offColor : onColor)
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            rating = index
                    }
                }
            }
        }
        .padding(.horizontal)
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {

        RatingView(rating: .constant(2))
    }
}
