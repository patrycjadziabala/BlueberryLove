//
//  MainView.swift
//  BlueberryLove
//
//  Created by Patka on 04/06/2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack {
            Image(Constants.backgroundImage)
                .resizable()
                .edgesIgnoringSafeArea(.top)
            VStack {
                Image(Constants.blueberries)
                    .resizable()
                    .scaledToFit()
//                    .edgesIgnoringSafeArea(.top)
                NutritionView()
                Spacer()
            } //vstack
        } //zstack
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
