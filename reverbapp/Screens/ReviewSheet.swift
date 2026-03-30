//
//  ReviewSheet.swift
//  reverbapp
//
//  Created by Aluno-01 on 30/03/26.
//

import SwiftUI

struct ReviewSheet: View {
    
    @State var description: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15){
            HStack{
                Image(.album1)
                    .resizable()
                    .frame(width: 64, height: 64)
                    .cornerRadius(10)
                VStack(alignment: .leading ,spacing: 6){
                    Text("Definitely Maybe")
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .font(Font.system(size: 16))
                    Text("600 reviews")
                        .fontWeight(.bold)
                        .foregroundStyle(.white.opacity(0.8))
                        .font(Font.system(size: 12))
                }
                Spacer()
                HStack{
                    Text("4.6")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(.white)
                    Image(systemName: "star.fill")
                        .foregroundStyle(LinearGradient(colors: [.gradientLinear1, .gradientLinear2], startPoint: .leading, endPoint: .bottom))
                        .font(.system(size: 16))
                }
            }
            
            Divider()
                .background(.gray)
        
            RatingView(rating: .constant(4))
            
                Text("Publish a comment")
                    .font(.system(.subheadline, weight: .medium))
                    .padding(.horizontal)
                    .foregroundStyle(.white)
                    .font(.system(size: 14))
                
            TextField("", text: $description, prompt: Text("What's on your mind?").foregroundColor(.white), axis: .vertical)
                    .lineLimit(5...)
                    .padding(.vertical, 12)
                    .padding(.horizontal)
                    .font(.system(size: 14))
                    .foregroundStyle(.white)
                    .background(
                        RoundedRectangle(cornerRadius: 26)
                            .foregroundStyle(.gray.opacity(0.3))
                    )
            ButtonComponent(title: "Publish")
                .padding(.top, 30)
            }
            .padding(.horizontal)
            .background(.black)
            .ignoresSafeArea()
        }
    }

#Preview {
    ReviewSheet()
}
