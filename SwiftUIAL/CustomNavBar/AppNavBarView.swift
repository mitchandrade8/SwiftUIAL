//
//  AppNavBarView.swift
//  SwiftUIAL
//
//  Created by Mitch Andrade on 5/11/23.
//

import SwiftUI

struct AppNavBarView: View {
    var body: some View {
        CustomNavView {
            ZStack {
                Color.orange.ignoresSafeArea()
                
                CustomNavLink(destination:
                                Text("Destination")
                    .customNavigationTitle("3 Point Specialist")
                ) {
                    Text("Navigate")
                }
            }
            .customNavBarItems(title: "Get Buckets", subtitle: "Become consistently elite", backButtonHidden: true)
        }
    }
}

struct AppNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        AppNavBarView()
    }
}

extension AppNavBarView {
    
    private var defaultNavView: some View {
        NavigationView {
            ZStack {
                Color.green.ignoresSafeArea()
                
                NavigationLink(
                    destination:
                        Text("Destination")
                        .navigationTitle("Title 2")
                        .navigationBarBackButtonHidden(false)
                    ,
                    label: {
                        Text("Navigate")
                    })
            }
            .navigationTitle("Nav title here")
        }
    }
}
