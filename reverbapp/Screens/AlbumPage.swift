//
//  AlbumPage.swift
//  reverbapp
//
//  Created by Aluno-01 on 30/03/26.
//

import SwiftUI

struct AlbumPage: View {
    var body: some View {
        ZStack{
            VStack(spacing: 20){
                Image(.album1)
                    .resizable()
                    .frame(width: 168, height: 168)
                    .padding(.top, 48)
                
                Text("teste")
                    .fontWeight(.bold)
                    .font(Font.system(size: 18))
                    .padding(.leading, -160)
            }
        }
        Spacer()
    }
}

#Preview {
    AlbumPage()
}
