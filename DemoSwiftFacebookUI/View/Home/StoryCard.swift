//
//  StoryCard.swift
//  DemoSwiftFacebookUI
//
//  Created by Din Din on 05/04/2024.
//

import SwiftUI

struct StoryCard: View {
    let stories: stories
    let avatarImages: [String]
    var body: some View {
        HStack {
            VStack {
                ZStack(alignment: .topLeading) {
                    Image(stories.preview)
                        .resizable()
                        .frame(width: 130, height: 220)
                        .overlay(
                            LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .top, endPoint: .bottom)
                                .opacity(0.6)
                                .foregroundColor(.white)
                        )
                        .overlay(
                            Text(stories.userName)
                                .font(.footnote)
                                .frame(height: 20)
                                .foregroundColor(.white)
                                .padding(.init(top: 0, leading: -40, bottom: 5, trailing: 5))
                            , alignment: .bottom
                        )
                    
                    HStack(spacing: -20) {
                        ForEach(avatarImages.indices, id: \.self) { index in
                            let avatar = avatarImages[index]
                            Image(systemName: avatar)
                                .resizable()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                                .padding(5)
                                .background(Circle().foregroundColor(Color.gray))
                                .padding(.horizontal, 5)
                                .offset(x: CGFloat(index * 20), y: CGFloat(index * 20))
                        }
                    }
                }
                .cornerRadius(15)
                .shadow(radius: 1)
            }
        }
    }
}

struct StoryCard_Previews: PreviewProvider {
    static var previews: some View {
        StoryCard(stories: stories(id: 0, userName: "User name 1", preview: "image1"), avatarImages: ["person.circle"])
    }
}
