//
//  InfoView.swift
//  BlueberryLove
//
//  Created by Patka on 04/06/2023.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        VStack {
            TitleView(title: "Learn more", color: .black)
            HStack {
                Group {
                    Image(systemName: "globe")
                    Text("Wiki")
                } // group
                Spacer()
                Link(destination: URL(string: "https://en.wikipedia.org/wiki/Blueberry")!) {
                    Group {
                        Image(systemName: "arrow.up.right.square")
                        Text("Blueberry")
                    }
                    .tint(Color(Constants.customBlueColor))
                }
            } //hstack
            .padding()
            .background(Color(Constants.customBlueColor)
                .opacity(0.3))
            .cornerRadius(20)
            .padding()
        }//vstack
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
