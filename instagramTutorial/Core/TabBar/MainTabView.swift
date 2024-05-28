//
//  MainTabView.swift
//  instagramTutorial
//
//  Created by Мария Ющенко on 23.05.2024.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            FeedView().tabItem { Image(systemName: "house") }
            SearchView().tabItem { Image(systemName: "magnifyingglass") }
            Text("Upload Posts").tabItem { Image(systemName: "plus.square") }
            Text("Notifications").tabItem { Image(systemName: "heart") }
            ProfileView().tabItem{Image(systemName: "person")}
        }
        .accentColor(.black)
    }
}

#Preview {
    MainTabView()
}
