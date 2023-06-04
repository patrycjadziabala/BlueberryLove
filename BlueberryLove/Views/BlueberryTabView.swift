//
//  BlueberryTabView.swift
//  BlueberryLove
//
//  Created by Patka on 04/06/2023.
//

import SwiftUI

struct BlueberryTabView: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }//tabItem
                .toolbarBackground(.hidden, for: .bottomBar)
            AppInfoView()
                .tabItem {
                    Label("Info", systemImage: "info")
                }
                .toolbarBackground(.hidden, for: .bottomBar)
        }//tabview
        .tint(Color(Constants.customBlueColor))
    }
}

struct BlueberryTabView_Previews: PreviewProvider {
    static var previews: some View {
        BlueberryTabView()
    }
}
