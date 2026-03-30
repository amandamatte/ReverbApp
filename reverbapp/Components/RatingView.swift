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
    var offImage: Image?
    var onImage = Image(systemName: "star.fill")
    var offColor = Color.gray
    var onColor = Color.orange
    
    var body: some View {
        HStack{
            Text("Rate")
                .foregroundColor(.white)
                .font(.system(size: 14))
                .fontWeight(.medium)
            
            Spacer()
            
            ForEach(1..<maximumRating + 1, id: \.self) { index in
                image(for: index)
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
    func image(for index: Int) -> Image {
        if index > rating {
            return offImage ?? onImage
        } else {
            return onImage
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {

        RatingView(rating: .constant(4))
    }
}
