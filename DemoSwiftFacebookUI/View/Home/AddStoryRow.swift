//
//  AddStoryRow.swift
//  DemoSwiftFacebookUI
//
//  Created by Din Din on 05/04/2024.
//

import SwiftUI

struct AddStoryRow: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.white)
                .frame(width: 130, height: 220)
            
            VStack {
                Image(systemName: "person.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 75)
                    .padding(.vertical, 20)
                    .cornerRadius(15, corners: [.topLeft, .topRight])
                
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: 17, height: 17)
                    .foregroundColor(.blue)
                    .padding(.bottom, 2)
                
                Text("Create new story")
                    .foregroundColor(.black)
                    .font(.system(size: 14))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
            }
            
        }
    
        .cornerRadius(15)
        .shadow(radius: 2)
        .padding(2)
        .padding(.leading, 10)
    }
}

struct AddStoryRow_Previews: PreviewProvider {
    static var previews: some View {
        AddStoryRow()
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}
