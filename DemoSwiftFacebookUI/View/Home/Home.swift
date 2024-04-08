//
//  Home.swift
//  DemoSwiftFacebookUI
//
//  Created by Din Din on 05/04/2024.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack {
            ScrollView {
                Header()
                AddPostBar()
                Rectangle()
                    .fill(Color(.lightGray))
                    .frame(height: 5)
                    .padding(.vertical, 3)
                Stories()
                Rectangle()
                    .fill(Color(.lightGray))
                    .frame(height: 5)
                    .padding(.vertical, 3)
                 ForEach(postsResponse, id: \.id){ post in
                     PostCard(post: post)
                 }
            }
            .background(LinearGradient(gradient: Gradient(colors: [Color("lightGray"), .white]), startPoint: .bottom, endPoint: .top))
        }
    }
}
