//
//  HeaderView.swift
//  BlueberryLove
//
//  Created by Patka on 04/06/2023.
//

import SwiftUI

struct HeaderView: View {
    var slideInAnimation: Animation {
            Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
                .speed(1)
                .delay(0.25)
        }
    @State private var showHeadline: Bool = false
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                            VStack {
                                if geometry.frame(in: .global).minY <= 0 {
                                    Image(Constants.blueberries)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: geometry.size.width, height: geometry.size.height)
                                        .shadow(radius: 12)
                                        .offset(y: geometry.frame(in: .global).minY/9)
                                        .clipped()
                                } else {
                                    Image(Constants.blueberries)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: geometry.size.width, height: geometry.size.height + geometry.frame(in: .global).minY)
                                        .shadow(radius: 12)
                                        .clipped()
                                        .offset(y: -geometry.frame(in: .global).minY)
                                }
                            } // vstack
                        } // geometry
            HStack {
                ZStack {
                    Rectangle()
                        .frame(width: 375, height: 130)
                        .foregroundColor(.white.opacity(0.4))
                    VStack(alignment: .leading) {
                        TitleView(title: "Blueberries", color: .white)
                            .shadow(radius: 6)
                        Text("Packed with vitamins and antioxidants, enjoy them fresh, in smoothies or in dessert for a delicious and nutricious boost.")
                            .foregroundColor(.white)
                            .shadow(radius: 6)
                            
                    } //vstack
                    .padding()
                } //zstack
                .animation(slideInAnimation, value: showHeadline)
                .offset(x: showHeadline ? 0 : 400, y: 110)
                Spacer()
            } //hstack
            .onAppear {
                showHeadline = true
            }
            .onDisappear {
                showHeadline = false
            }
        } //zstack
        .frame(height: 400,alignment: .center)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
