//
//  LoginPageComponents.swift
//  reverbapp
//
//  Created by Aluno-02 on 23/03/26.
//

import SwiftUI

struct LoginPageComponents: View {
    var body: some View {
        
        ZStack{
            
            Color.gray
                .ignoresSafeArea()
            VStack(spacing: 150){
                VStack(spacing: 22){
                    Image("Icon")
                    VStack(spacing: 16) {
                        Text("Welcome to Reverb")
                        Text("Explore songs, albums and artists. See what people are reviewing and share your music taste.")
                            .multilineTextAlignment(.center)
                            .fontWeight(.regular)
                            .font(Font.system(size: 14))
                            .foregroundColor(.primary)
                        
                    }
                    
                }
                
                Button {
                    //MusicPreference.toggle() //criar a classe Music
                }  label: {
                    Text("Login with Apple")
                        .foregroundColor(.white)
                        .padding()
                        .cornerRadius(34)
                }
                .buttonStyle(.borderedProminent)
            }
            
        }
        
    }
}

#Preview {
    LoginPageComponents()
}
