//
//  ArtistPage.swift
//  reverbapp
//
//  Created by Amanda Matte on 27/03/26.
//

import SwiftUI

struct ArtistPage: View {
    var body: some View {
        VStack{
            Image(.oasis)
                .resizable()
                .frame(width: 400, height: 400)
                .ignoresSafeArea()
        }
        Spacer()
        
    }
}

#Preview {
    ArtistPage()
}
