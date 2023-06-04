//
//  ReceipeInfoView.swift
//  BlueberryLove
//
//  Created by Patka on 04/06/2023.
//

import SwiftUI

struct ReceipeInfoView: View {
    var receipe: Receipe
    var body: some View {
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
        .padding()    }
}

struct ReceipeInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ReceipeInfoView(receipe: receipeData[0])
    }
}
