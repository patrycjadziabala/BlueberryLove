//
//  ReceipeCardView.swift
//  BlueberryLove
//
//  Created by Patka on 04/06/2023.
//

import SwiftUI

struct ReceipeCardView: View {
    var receipe: Receipe
    @State private var showDetails: Bool = false
    var body: some View {
        VStack (alignment: .center, spacing: 10) {
            Image(receipe.image)
                .resizable()
                .scaledToFit()
                .shadow(radius: 6)
            VStack (alignment: .center) {
                Text(receipe.title)
                    .font(.custom(Constants.customFont, size: 30))
                Text(receipe.headline)
                    .opacity(0.5)
                    .italic()
            } //vstack
            .padding([.leading, .trailing])
            RatingView(receipe: receipe)
           ReceipeInfoView(receipe: receipe)
        } //vstack
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 12)
        .onTapGesture {
            showDetails = true
        }
        .sheet(isPresented: $showDetails) {
            ReceipeDetailsView(receipe: receipe)
        }
    }
}

struct ReceipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        ReceipeCardView(receipe: receipeData[0])
    }
}
