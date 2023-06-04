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
                .scaledToFit()
                .ignoresSafeArea()
            ScrollView {
                VStack {
                    HeaderView()
                    NutritionView()
                    FactsTabView()
                    TitleView(title: "Receipes", color: .black)
                    ForEach(receipeData, id: \.id) { receipe in
                        ReceipeCardView(receipe: receipe)
                            .padding()
                    }
                    Spacer()
                } //vstack
            } //scrollView
            .edgesIgnoringSafeArea(.top)
        }//zstack
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
