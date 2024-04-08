//
//  ContentView.swift
//  DemoSwiftFacebookUI
//
//  Created by Din Din on 05/04/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    
    var body: some View {
        VStack(spacing: 0) {
            TabView(selection: $selection) {
                Home().tabItem {
                    TabBarItem(imageName: "house", text: "Home")
                }.tag(0)
                
                Video().tabItem {
                    TabBarItem(imageName: "play.tv.fill", text: "Video")
                }.tag(1)
                
                Marketplace().tabItem {
                    TabBarItem(imageName: "storefront", text: "Marketplace")
                }.tag(2)
                
                Game().tabItem {
                    TabBarItem(imageName: "gamecontroller", text: "Game")
                }.tag(3)
                
                Notification().tabItem {
                    TabBarItem(imageName: "bell", text: "Notifications")
                }.tag(4)
                
                Menu().tabItem {
                    TabBarItem(imageName: "lp", text: "Menu")
                }.tag(5)
            }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
            
            Divider()
            
            HStack(spacing: 0) {
                Spacer()
                TabBarButton(imageName: "house", text: "Home", index: 0, selection: $selection)
                Spacer()
                TabBarButton(imageName: "play.tv.fill", text: "Video", index: 1, selection: $selection)
                Spacer()
                TabBarButton(imageName: "storefront", text: "Marketplace", index: 2, selection: $selection)
                Spacer()
                TabBarButton(imageName: "gamecontroller", text: "Game", index: 3, selection: $selection)
                Spacer()
                TabBarButton(imageName: "bell", text: "Notifications", index: 4, selection: $selection)
                Spacer()
                TabBarButton(imageName: "line.3.horizontal", text: "Menu", index: 5, selection: $selection)
                Spacer()
            }
        }
    }
}

struct TabBarItem: View {
    let imageName: String
    let text: String
    
    var body: some View {
        HStack(spacing: 6) {
            Image(systemName: imageName)
            Text(text)
                .font(.system(size: 10))
                .lineLimit(1)
        }
    }
}

struct TabBarButton: View {
    let imageName: String
    let text: String
    let index: Int
    @Binding var selection: Int
    
    var body: some View {
        Button(action: {
            selection = index
        }) {
            VStack {
                Image(systemName: imageName)
                    .padding(.bottom, 3)
                Text(text)
                    .font(.system(size: 9))
                    .lineLimit(1)
            }
            .padding(.top, 10)
            .foregroundColor(selection == index ? .blue : .gray)
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    ContentView()
}
