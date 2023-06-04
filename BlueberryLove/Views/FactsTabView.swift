//
//  FactsTabView.swift
//  BlueberryLove
//
//  Created by Patka on 04/06/2023.
//

import SwiftUI

struct FactsTabView: View {
    var body: some View {
        VStack(spacing: 0) {
            TitleView(title: "Facts", color: .black)
            TabView {
                ForEach(factsData, id: \.self) { fact in
                    Group {
                        Text("Blueberries ")
                            .font(.custom(Constants.customFont, size: 30))
                            .foregroundColor(.white)
                        +
                        Text(fact)
                            .font(.system(size: 20))
                    } //group
                    .padding()
                    .background(
                        Color(Constants.customBlueColor)
                            .opacity(0.3)
                            .cornerRadius(20)
                            .frame(height: 150)
                    )
                }
            } // tabView
            .tabViewStyle(.page)
            .frame(height: 210)
        }
    }
}

struct FactsTabView_Previews: PreviewProvider {
    static var previews: some View {
        FactsTabView()
    }
}
