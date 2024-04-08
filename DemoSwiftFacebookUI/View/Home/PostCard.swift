//
//  PostCard.swift
//  DemoSwiftFacebookUI
//
//  Created by Din Din on 08/04/2024.
//

import SwiftUI

struct PostCard : View {
    let post:post
    @State private var commentContent = ""
    var body: some View {
        VStack{
            
            VStack (alignment: .leading){
                
                HStack{
                    ZStack{
                        //            user image
                        Image(post.userProfileImage).resizable()
                            .frame(width: 45, height: 45)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        
                    }
                    VStack{
                        Text(post.userName)
                            .font(.footnote)
                            .fontWeight(.bold)
                        HStack{
                            Text(post.postSince).font(.system(size: 10))
                                .foregroundColor(.gray)
                            Image("globe")
                                .resizable()
                                .frame(width: 10, height: 10)
                                .foregroundColor(Color("lightGray"))
                        }
                    }
                    Spacer()
                    //          image icon
                    Image("more")
                        .resizable()
                        .frame(width: 15, height: 15)
                        .foregroundColor(Color("lightGray"))
                        .padding(.horizontal, 15)
                    Image("x")
                        .resizable()
                        .frame(width: 15, height: 15)
                        .foregroundColor(Color("lightGray"))
                    
                    
                }
                
                
                
                VStack{
                    //        post text
                    
                    Text(post.description).font(.caption).font(.system(size: 14))
                        .fontWeight(.medium)
                }
                
                
                
                
                //            post image
                Image(post.postImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipped()
                    .cornerRadius(10)
                
                //                Likes and comment
                
                HStack{
                    //          like icon
                    Image("reactions")
                        .resizable()
                        .frame(width: 60, height: 25)
                    Text("146K").font(.system(size: 14))
                        .foregroundColor(Color.gray)
                    
                    Spacer()
                    

                    Text("12K comments").font(.system(size: 14))
                        .foregroundColor(Color.gray)

                    Text("29K shares").font(.system(size: 14))
                        .foregroundColor(Color.gray)
                
                }
                
                Rectangle()
                    .fill(Color(.lightGray))
                    .frame(height: 1)
                    .padding(.vertical, 8)
                //                comment bar
                
                HStack{
                    
                    Image("like")
                        .resizable()
                        .frame(width: 18, height: 18)
                    Text("Like").font(.system(size: 16))
                        .foregroundColor(Color.gray)
                    
                    Spacer()
                    
                    
                    //          comments icon
                    Image("message")
                        .resizable()
                        .frame(width: 18, height: 18)
                        .foregroundColor(Color("lightGray2"))
                    Text("Comment").font(.system(size: 16))
                        .foregroundColor(Color.gray)
                    
                    Spacer()
                    
                    //          shares icon
                    Image("share")
                        .resizable()
                        .frame(width: 18, height: 18)
                        .foregroundColor(Color("lightGray2"))
                    Text("Share").font(.system(size: 16))
                        .foregroundColor(Color.gray)
                    
                }
                
                .padding(.init(top: 0, leading: 10, bottom: 0, trailing: 10))
                
            }
            .padding(.all,10)
            .background(Color.white)
            .cornerRadius(10)
        }.padding(.init(top: 0, leading: 10, bottom: 4, trailing: 10))
        Rectangle()
            .fill(Color(.lightGray))
            .frame(height: 5)
    }
}

