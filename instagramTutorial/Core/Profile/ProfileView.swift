//
//  ProfileView.swift
//  instagramTutorial
//
//  Created by Мария Ющенко on 23.05.2024.
//

import SwiftUI

struct ProfileView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
    ]
    
    var body: some View {
        NavigationStack{
            ScrollView{
                //header
                VStack(spacing:10){
                    // pic and stats
                    HStack{
                        Image("Avatar").resizable().scaledToFill().frame(width: 80,height: 80).clipShape(Circle())
                        
                        Spacer()
                        
                        HStack(spacing: 8){
                            UserStatView(value: 3, title: "Posts")
                            
                            UserStatView(value: 1, title: "Followers")
                            
                            UserStatView(value: 2, title: "Following")
                        }
                    }.padding(.horizontal)
                    
                    VStack(alignment: .leading, spacing: 4){
                        Text("Winstone Duke").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text("Wakanda forever").foregroundColor(.gray).fontWeight(.semibold)
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading).padding(.horizontal)
                    
                    //action button
                    
                    Button{
                        
                    }label: {
                        Text("Edit Profile").font(.subheadline).fontWeight(.semibold).frame(width: 360,height: 32).foregroundColor(.black).overlay(RoundedRectangle(cornerRadius: 6).stroke(Color.gray, lineWidth: 1))
                    }
                    
                    Divider()
                }
                
                //post grid view
                
                LazyVGrid(columns: gridItems, spacing: 1){
                    ForEach(0...15, id:\.self){
                        index in Image("Img1").resizable().scaledToFill()
                    }
                    
                }
            }.navigationTitle("Profile").navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing){
                        Button{
                            
                        }label: {
                            Image(systemName: "line.3.horizontal")
                                .foregroundColor(.black)
                        }
                    }
                }
        }
    }
}

#Preview {
    ProfileView()
}
