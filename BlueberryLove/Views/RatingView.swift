//
//  RatingView.swift
//  BlueberryLove
//
//  Created by Patka on 04/06/2023.
//

import SwiftUI

struct RatingView: View {
    var receipe: Receipe
    var body: some View {
        HStack {
            ForEach(1...receipe.rating, id: \.self) { _ in
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                    .shadow(radius: 12)
            }
        }//hstack
    }
    
    struct RatingView_Previews: PreviewProvider {
        static var previews: some View {
            RatingView(receipe: receipeData[0])
        }
    }
}
