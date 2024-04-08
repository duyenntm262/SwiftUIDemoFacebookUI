//
//  AddPostBar.swift
//  DemoSwiftFacebookUI
//
//  Created by Din Din on 08/04/2024.
//

import SwiftUI

struct AddPostBar: View {
    @State private var postContent = ""
    var body: some View {
        HStack{
            Image("avatar").resizable()
                .frame(width: 40, height: 40)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .padding(.init(top: 5, leading: 5, bottom: 5, trailing: 0))
          
            TextField("What's on your mind?", text: $postContent)
                .font(.system(size: 14))
            
            HStack{
                
                Image("photos")
                    .resizable()
                    .frame(width: 26, height: 26)
                    .foregroundColor(Color("lightGray"))
               
            }.padding(.init(top: 0, leading: 0, bottom: 0, trailing: 8))
            
        }
        .background(Color.white)
        .cornerRadius(20)
        .padding(.init(top: 0, leading: 10, bottom: 0, trailing: 10))
        
    }
}

struct AddPostBar_Previews: PreviewProvider {
    static var previews: some View {
        AddPostBar()
    }
}
