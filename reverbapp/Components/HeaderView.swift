//
//  HeaderView.swift
//  reverbapp
//
//  Created by Aluno-01 on 27/03/26.
//

import SwiftUI

struct HeaderView: View {
    var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.system(size: 18, weight: .semibold))
                .foregroundColor(.white.opacity(0.75))
            Spacer()
            Image(systemName: "chevron.right")
                .foregroundColor(.white.opacity(0.5))
        }
        .padding(.horizontal)
    }
}
