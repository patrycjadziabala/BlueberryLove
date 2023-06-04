//
//  NutritionView.swift
//  BlueberryLove
//
//  Created by Patka on 04/06/2023.
//

import SwiftUI

struct NutritionView: View {
    var body: some View {
        VStack(spacing: 10) {
            TitleView(title: "Nutrition", color: Color.black)
            HStack {
                VStack {
                    ForEach(Array(nutritionData1.keys), id: \.self, content: { key in
                        VStack(alignment: .trailing) {
                            Text(key)
                            Text(nutritionData1[key] ?? "")
                            Divider()
                        } //vstack
                    })
                } //vstack
                VStack {
                    HStack {
                        Divider()
                    } //hstack
                    Image("blueberryIcon")
                        .resizable()
                        .scaledToFit()
    //                    .opacity(0.4)
                        .frame(height: 50)
                    HStack {
                        Divider()
                    } //hstack
                } //vstack
                VStack(alignment: .leading) {
                    ForEach(Array(nutritionData2.keys), id: \.self, content: { key in
                        VStack(alignment: .leading) {
                            Text(key)
                            Text(nutritionData2[key] ?? "")
                            Divider()
                        } //vstack
                        
                    })
                } //vstack
            } //hstack
            .opacity(0.6)
        .frame(height: 300)
        }
    }
}

struct NutritionView_Previews: PreviewProvider {
    static var previews: some View {
        NutritionView()
            .previewLayout(.sizeThatFits)
    }
}
