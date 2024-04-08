//
//  PostModel.swift
//  DemoSwiftFacebookUI
//
//  Created by Din Din on 08/04/2024.
//

import Foundation

struct post: Identifiable {
    let id: Int
    let userName, userProfileImage, postSince, description, postImage: String
}

let postsResponse: [post] = [
    .init(id: 7, userName: "User name 1", userProfileImage: "avatar", postSince: "10 minutes", description:"The future belongs to those who believe in the beauty of their dreams" , postImage: "post1"),
    
    
    .init(id: 8, userName: "User name 2", userProfileImage: "avatar", postSince: "1 hours", description:"The Simpsons season premiere is a showstopper with Kristen Bell" , postImage: "post2"),
    
    .init(id: 6, userName: "User name 3", userProfileImage: "avatar", postSince: "15 minutes", description:"Airpods Pro" , postImage: "post3"),
    
    
    
    .init(id: 4, userName: "User name 4", userProfileImage: "avatar", postSince: "40 minutes", description:"Max won her first game of Civilization. Proud dad moment." , postImage: "post1"),
    
    
    .init(id: 0, userName: "User name 5", userProfileImage: "avatar", postSince: "20 minutes", description: "I rather hate it and I would much prefer to spend my time on design and engineering," , postImage: "post2"),
    
    .init(id: 1, userName: "User name 6", userProfileImage: "avatar", postSince: "50 minutes", description: "The future belongs to those who believe in the beauty of their dreams", postImage: "post3"),
    
    .init(id: 2, userName: "User name 7", userProfileImage: "avatar", postSince: "10 minutes", description: "In terms of people going to Mars, I think this is potentially something that could be accomplished in about 10 years, maybe sooner, maybe 9 years.", postImage: "post1"),
    
    .init(id: 9, userName: "User name 8", userProfileImage: "avatar", postSince: "16 minutes", description:"Notre mission est de faciliter la vie de nos concitoyens tout en insufflant des valeurs sociales." , postImage: "post2"),
    
    .init(id: 3, userName: "User name 9", userProfileImage: "avatar", postSince: "23 minutes", description: " am still under the impression that there is nothing alive quite so beautiful as a horse", postImage: "post3"),
    
    .init(id: 5, userName: "User name 10", userProfileImage: "avatar", postSince: "33 minutes", description:"new series , coming soon." , postImage: "post1"),
]
