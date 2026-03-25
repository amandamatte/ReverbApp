//
//  LoginPage.swift
//  reverbapp
//
//  Created by Aluno-02 on 23/03/26.
//

import SwiftUI

struct LoginPage: View {
    var body: some View {
        
        ZStack {
            LinearGradient(
                stops: [
                    Gradient.Stop(color: Color("GradientLinear3").opacity(0.98), location: 0.0),
                    Gradient.Stop(color: Color("GradientLinear4"), location: 0.56)
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()

            VStack {
                
                VStack(spacing: 18){
                    Image("Reverb")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 235, height: 235)
                }
                
                VStack(spacing: 132){
                    VStack(spacing: 22){
                        Image("Icon")
                        VStack(spacing: 16) {
                            Text("Welcome to ")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .font(Font.system(size: 24))
                            
                            + Text("Reverb")
                                .fontWeight(.bold)
                                .font(Font.system(size: 24))
                                .foregroundStyle(LinearGradient(colors: [.gradientLinear1, .gradientLinear2], startPoint: .leading, endPoint: .bottom))
                            
                            Text("Explore songs, albums and artists. See what people are reviewing and share your music taste.")
                                .multilineTextAlignment(.center)
                                .fontWeight(.regular)
                                .font(Font.system(size: 14))
                                .foregroundColor(.white)
                            
                        }
                        
                    }
                    
                    
                    Button {
                        GenrePage()
                    }  label: {
                        Text("Continue with Apple")
                            .foregroundColor(.gradientLinear2)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .padding(.vertical, 16)
                            .overlay {
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(LinearGradient(colors: [.gradientLinear1, .gradientLinear2], startPoint: .leading, endPoint: .bottom), lineWidth: 2)
                            }
                    }
                    .padding(.horizontal, 20)
                }
                
            }
        }
    }
}


#Preview {
    LoginPage()
}
