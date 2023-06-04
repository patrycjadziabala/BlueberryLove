//
//  ReceipeDetailsView.swift
//  BlueberryLove
//
//  Created by Patka on 04/06/2023.
//

import SwiftUI

struct ReceipeDetailsView: View {
    var receipe: Receipe
    var body: some View {
        
        ScrollView {
            VStack {
                Image(receipe.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(radius: 12)
                TitleView(title: receipe.title, color: .black)
                    .padding()
                RatingView(receipe: receipe)
                ReceipeInfoView(receipe: receipe)
                Text("Ingredients")
                    .font(.custom(Constants.customFont, size: 30))
                    .padding(.bottom)
                ForEach(receipe.ingredients, id: \.self) { ingredient in
                    VStack {
                        Text(ingredient)
                            Divider()
                    } //vstack
                    .padding([.leading, .trailing])
                }//for each
                Text("Instructions")
                    .font(.custom(Constants.customFont, size: 30))
                    .padding(.bottom)
                ForEach(receipe.instructions, id: \.self) { instruction in
                    VStack(spacing: 0) {
                        Image("blueberryIcon")
                            .renderingMode(.template)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 40)
                            .foregroundColor(Color(Constants.customBlueColor))
                            
                        Text(instruction)
                            .padding()
                            .multilineTextAlignment(.center)
                    }
                }
                Text("Bon Appétit!")
                    .font(.custom(Constants.customFont, size: 30))
                    .foregroundColor(Color(Constants.customBlueColor))
                    .shadow(radius: 12)
            }//vstack
           
            
            
        }//scrollView
        .background(Color(Constants.customBlueColor)
            .opacity(0.3))
    }
}

struct ReceipeDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ReceipeDetailsView(receipe: receipeData[0])
    }
}
