//
//  ReviewSheet.swift
//  reverbapp
//
//  Created by Aluno-01 on 30/03/26.
//

import SwiftUI

struct ReviewSheet: View {
    
    @State var description: String = ""
    @State var currentRating: Int = 0
    @State private var showToast: Bool = false
    
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            
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
                
                RatingView(rating: $currentRating)
                
                Text("Publish a comment")
                    .font(.system(.subheadline, weight: .medium))
                    .padding(.horizontal)
                    .foregroundStyle(.white)
                    .font(.system(size: 14))
                
                TextField("", text: $description, prompt: Text("What's on your mind?")
                    .foregroundColor(.white), axis: .vertical)
                    .lineLimit(5...)
                    .padding(.vertical, 12)
                    .padding(.horizontal)
                    .font(.system(size: 14))
                    .foregroundStyle(.white)
                    .background(
                        RoundedRectangle(cornerRadius: 26)
                            .foregroundStyle(.gray.opacity(0.3))
                    )
                Button {
                    showToast.toggle()
                } label: {
                        Text("Publish")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 16)
                        .background(
                            LinearGradient(colors: [.gradientLinear1, .gradientLinear2], startPoint: .leading, endPoint: .bottom), in: Capsule()
                        )
            }
            .padding(.bottom, 10)
            .dynamicIslandToast(isPresented: $showToast, value: .example1)

                }
            }
            .padding(.horizontal)
        }
    }

#Preview {
    ReviewSheet()
        .background(Color.black)
}
