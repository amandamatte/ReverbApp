//
//  LoginPageComponents.swift
//  reverbapp
//
//  Created by Aluno-02 on 23/03/26.
//

import SwiftUI

struct GetGenre: View {
    var body: some View {
        
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
                
            
            VStack(spacing: 15) {
                Button {
                }  label: {
                    Text("Login with Apple")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(.vertical, 16)
                        .background(
                            LinearGradient(colors: [.gradientLinear1, .gradientLinear2], startPoint: .leading, endPoint: .bottom), in: .capsule)
                }
                .padding(.horizontal, 20)
                
                Button {
                }  label: {
                    Text("Login with Apple")
                        .foregroundColor(.orange)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(.vertical, 16)
                        .background(.background)
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

#Preview {
    GetGenre()
}
