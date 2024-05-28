//
//  FeedCell.swift
//  instagramTutorial
//
//  Created by Мария Ющенко on 28.05.2024.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack{
            //Image + Username
            HStack{
                Image("Img2").resizable().scaledToFill().frame(width: 40, height: 40).clipShape(.circle)
                
                Text("black pantera").font(.footnote).fontWeight(.semibold)
                Spacer()
            }
            .padding(.leading,8)
            
            //Post image
            Image("Img2").resizable().scaledToFill().frame(height: 400).clipShape(Rectangle())
            
            //Action buttons
            HStack(spacing:16){
                Button{ print("Like post") }label: { Image(systemName: "heart").imageScale(.large)}
                Button{ print("Comment on post") }label: {Image(systemName: "bubble.right").imageScale(.large)}
                Button{ print("Share post") }label: {Image(systemName: "paperplane").imageScale(.large)}
                
                Spacer()
            }.padding(.leading, 8).padding(.top,4).foregroundColor(.black)
            
            //Likes label
            Text("23 likes").font(.footnote).fontWeight(.semibold).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading).padding(.leading,10).padding(.top,1)
            
            //Caption label
            HStack{
                Text("black pantera ").fontWeight(.semibold) + Text("This is sime test caption for now this is really logng text in line")
            }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading).padding(.leading,10).padding(.top,0.3).font(.footnote)
            
            Text("6h ago").frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading).padding(.leading,10).padding(.top,0.3).font(.footnote).foregroundColor(.gray)
        }
    }
}

#Preview {
    FeedCell()
}
