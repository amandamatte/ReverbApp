//
//  ReviewSection.swift
//  reverbapp
//
//  Created by Aluno-01 on 27/03/26.
//

import SwiftUI

struct ReviewSection: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {

            HeaderView(title: "Reviews")
            
            HStack(spacing: 12) {
                StatCard(title: "Albums", value: "18")
                StatCard(title: "Songs", value: "24")
                StatCard(title: "Artists", value: "3")
                StatCard(title: "Avg. Rating", value: "3.6", isRating: true)
            }
            .padding(.horizontal)
        }
    }
}
