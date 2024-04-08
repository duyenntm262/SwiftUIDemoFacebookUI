//
//  Stories.swift
//  DemoSwiftFacebookUI
//
//  Created by Din Din on 05/04/2024.
//

import SwiftUI

struct Stories: View {
    var body: some View {
        VStack{
            ScrollView ( .horizontal, showsIndicators : false ){
              
                HStack{
                    AddStoryRow()
                    ForEach(storiesResponse, id: \.id){ stories in
                        
                        StoryCard(stories: stories, avatarImages: ["person.circle"])
                               
                    }
                    
                }
            }
        }
    }
}
