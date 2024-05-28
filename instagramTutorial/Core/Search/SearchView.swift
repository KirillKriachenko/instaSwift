//
//  SearchView.swift
//  instagramTutorial
//
//  Created by Мария Ющенко on 28.05.2024.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack(spacing: 16){
                    ForEach(0...15, id:\.self){ user in
                        HStack{
                            Image("Img3").resizable().scaledToFill().frame(width: 40,height: 40).clipShape(Circle())
                            
                            VStack(alignment: .leading){
                                Text("Jocker").fontWeight(.semibold)
                                Text("Jack Oswald White")
                            }.font(.footnote)
                            Spacer()
                        }.padding(.horizontal)
                    }
                }
                .padding(.top,8)
                .searchable(text: $searchText, prompt:"Search")
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}
