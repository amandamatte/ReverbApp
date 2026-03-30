//
//  ReviewButton.swift
//  reverbapp
//
//  Created by Aluno-01 on 30/03/26.
//

import SwiftUI

struct ButtonComponent: View {
    var title: String
    var body: some View {
        Text(title)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 16)
            .background(
                LinearGradient(colors: [.gradientLinear1, .gradientLinear2], startPoint: .leading, endPoint: .bottom), in: Capsule()
            )
    }
}
