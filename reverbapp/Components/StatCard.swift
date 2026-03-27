//
//  StatCard.swift
//  reverbapp
//
//  Created by Aluno-01 on 27/03/26.
//

import SwiftUI

struct StatCard: View {
    let title: String
    let value: String
    var isRating: Bool = false
    
    var body: some View {
        VStack(spacing: 8) {
            Text(title)
                .font(.system(size: 11))
                .fontWeight(.medium)
                .foregroundColor(.white.opacity(0.6))
            
            HStack(spacing: 4) {
                Text(value)
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.white)
                
                if isRating {
                    Image(systemName: "star.fill")
                        .foregroundStyle(LinearGradient(colors: [.gradientLinear1, .gradientLinear2], startPoint: .leading, endPoint: .bottom))
                        .font(.system(size: 16))
                }
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 16)
        .background(Color(white: 0.15))
        .cornerRadius(12)
    }
}
