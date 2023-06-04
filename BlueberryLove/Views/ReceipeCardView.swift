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
            VStack (alignment: .leading) {
                Text(receipe.title)
                    .font(.custom(Constants.customFont, size: 30))
                Text(receipe.headline)
                    .opacity(0.5)
                    .italic()
            } //vstack
            .padding([.leading, .trailing])
            HStack {
                ForEach(1...receipe.rating, id: \.self) { _ in
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .shadow(radius: 12)
                }
            }//hstack
            HStack {
                HStack {
                    Image(systemName: "person")
                    Text("Serves: \(receipe.serves)")
                } //hstack
                .opacity(0.6)
                HStack {
                    Image(systemName: "clock")
                    Text("Prep: \(receipe.preparation)")
                } //hstack
                .opacity(0.6)
                HStack {
                    Image(systemName: "flame")
                    Text("Cooking: \(receipe.cooking)")
                } //hstack
                .opacity(0.6)
            } // hstack
            .padding()
        } //vstack
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 12)
        .onTapGesture {
            showDetails = true
        }
        .sheet(isPresented: $showDetails) {
            
        }
    }
}

struct ReceipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        ReceipeCardView(receipe: receipeData[0])
    }
}
