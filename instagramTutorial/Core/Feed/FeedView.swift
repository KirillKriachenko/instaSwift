//
//  FeedView.swift
//  instagramTutorial
//
//  Created by Мария Ющенко on 28.05.2024.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack(spacing: 32){
                    ForEach(0...10, id: \.self){
                        post in FeedCell()
                    }
                }.padding(.top,8)
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Image("Logo-Instagram")
                        .resizable()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 60)
                }
                
                ToolbarItem(placement: .navigationBarTrailing){
                    Image(systemName: "paperplane").imageScale(.large)
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
