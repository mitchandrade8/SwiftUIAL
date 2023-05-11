//
//  AppTabBarView.swift
//  SwiftUIAL
//
//  Created by Mitch Andrade on 5/10/23.
//

import SwiftUI

// Generics
// ViewBuilder
// PreferenceKey
// MatchedGeometryEffect

struct AppTabBarView: View {
    
    @State private var selection: String = "home"
    @State private var tabSelection: TabBarItem = .home

    
    var body: some View {
        CustomTabBarContainerView(selection: $tabSelection) {
            Color.blue
                .tabBarItem(tab: .home, selection: $tabSelection)
                
            Color.green
                .tabBarItem(tab: .favorites, selection: $tabSelection)
            
            Color.pink
                .tabBarItem(tab: .profile, selection: $tabSelection)
            
        }
    }
}

struct AppTabBarView_Previews: PreviewProvider {

    static var previews: some View {
        AppTabBarView()
    }
}

extension AppTabBarView {
    
    private var defaultTabView: some View {
        TabView(selection: $selection) {
            Color.red
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            Color.purple
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favorites")
                }
            Color.blue
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
    }
}
