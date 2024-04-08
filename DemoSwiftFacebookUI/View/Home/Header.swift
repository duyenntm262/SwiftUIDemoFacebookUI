//
//  Header.swift
//  DemoSwiftFacebookUI
//
//  Created by Din Din on 05/04/2024.
//

import SwiftUI

struct Header : View {
    var body: some View {
        HStack{
            Text("Facebook")
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(.title)
            Spacer()
            Image("plus")
                .resizable()
                .frame(width: 35, height: 35)
                .foregroundColor(Color("lightGray"))
            
            Image("search")
                .resizable()
                .frame(width: 35, height: 35)
                .foregroundColor(Color("lightGray"))
            
            Image("messenger")
                .resizable()
                .frame(width: 35, height: 35)
                .foregroundColor(Color("lightGray"))
        }
        .padding(.init(top: 0, leading: 10, bottom: 0, trailing: 10))
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}

