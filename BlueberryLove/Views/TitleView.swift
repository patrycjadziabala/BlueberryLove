//
//  TitleView.swift
//  BlueberryLove
//
//  Created by Patka on 04/06/2023.
//

import SwiftUI

struct TitleView: View {
    var title: String
    var color: Color
    var body: some View {
        Text(title)
            .font(.custom(Constants.customFont, size: 40))
            .foregroundColor(color)
            .shadow(radius: 6)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "blueberry", color: Color.red)
            .previewLayout(.sizeThatFits)
    }
}
