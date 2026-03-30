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
    var onColor = Color.yellow
    
    var body: some View {
        HStack {
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
    }
    func image(for index: Int) -> Image {
        if index > rating {
            return offImage ?? onImage
        } else {
            return onImage
        }
    }
}

// Preview provider for testing
struct RatingView_Previews: PreviewProvider {
    static var previews: some View {

        RatingView(rating: .constant(3))
    }
}
