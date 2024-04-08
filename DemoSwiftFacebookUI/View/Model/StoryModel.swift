//
//  StoryModel.swift
//  DemoSwiftFacebookUI
//
//  Created by Din Din on 05/04/2024.
//

import Foundation

struct stories: Identifiable{
    let id: Int
    let userName, preview: String
}

let storiesResponse: [stories] = [

    .init(id: 2, userName: "User name 1", preview: "image1"),
    .init(id: 0, userName: "User name 2", preview: "image2"),
    .init(id: 6, userName: "User name 3", preview: "image3"),
    .init(id: 5, userName: "User name 4", preview: "image4"),
    .init(id: 1, userName: "User name 5", preview: "image1"),
    .init(id: 3, userName: "User name 6", preview: "image2"),
    .init(id: 4, userName: "User name 6", preview: "image2")
    
]
