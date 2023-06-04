//
//  EntryView.swift
//  BlueberryLove
//
//  Created by Patka on 04/06/2023.
//

import SwiftUI

struct EntryView: View {
    @State private var pulsateAnimation: Bool = true
    @State private var showEntry: Bool = true
    var body: some View {
        if showEntry {
            ZStack {
                Image("background")
                    .resizable()
                    .ignoresSafeArea()
                
                
                VStack(spacing: 0) {
                    Image("blueberry")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 350)
                        .shadow(radius: 12)
                        .scaleEffect(pulsateAnimation ? 1 : 0.95)
                        .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: pulsateAnimation)
                    
                    Text("Blueberries")
                        .font(Font.custom("ArchitectsDaughter-Regular", size: 50))
                        .shadow(radius: 6)
                    
                    Text(Constants.blueberriesDescription)
                        .font(.system(size: 18))
                        .multilineTextAlignment(.center)
                        .padding()
                        .background(
                            Color("customBlue")
                                .opacity(0.2)
                                .cornerRadius(20))
                        .padding()
                    
                    EnterButtonView(showEntry: $showEntry)
                    
                    Spacer()
                } // vstack
                .onAppear {
                    pulsateAnimation.toggle()
                }
            } // zstack
        } else {
            BlueberryTabView()
        }
    }
}

struct EntryView_Previews: PreviewProvider {
    static var previews: some View {
        EntryView()
    }
}
