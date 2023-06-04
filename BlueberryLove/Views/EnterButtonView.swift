//
//  EnterButtonView.swift
//  BlueberryLove
//
//  Created by Patka on 04/06/2023.
//

import SwiftUI

struct EnterButtonView: View {
    @Binding var showEntry: Bool
    
    var body: some View {
        Button {
            showEntry.toggle()
        } label: {
            HStack {
                Text("Enter")
                    .font(Font.custom("ArchitectsDaughter-Regular", size: 25))
                Image(systemName: "arrow.right.circle")
                   
            } //hstack
            .padding([.top, .bottom], 2)
            .padding([.leading, .trailing], 15)
            .background(
                Capsule()
                    .strokeBorder(lineWidth: 2)
                    .shadow(radius: 6)
            )
        } // button
        .foregroundColor(Color("customBlue"))    }
}

struct EnterButtonView_Previews: PreviewProvider {
    static var previews: some View {
        EnterButtonView(showEntry: .constant(true))
            .previewLayout(.sizeThatFits)
    }
}
