//
//  AnimationView.swift
//  BlueberryLove
//
//  Created by Patka on 04/06/2023.
//

import SwiftUI


struct AnimationView: View {
    @State private var isAnimated: Bool = false
    func randomRotation() -> Double {
        Double.random(in: -90.0...90.0)
    }
    
    func randomPosition(max: CGFloat) -> CGFloat {
        CGFloat.random(in: 0...max)
    }
    
    var body: some View {
        ZStack {
            ForEach(0...9, id: \.self) { item in
                GeometryReader { geometry in
                    Image("blueberryIcon")
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150)
                        .position(x: randomPosition(max: geometry.size.width), y: randomPosition(max: geometry.size.height))
                        .foregroundColor(Color(Constants.customBlueColor)
                            .opacity(0.6))
                        .rotationEffect(.degrees(randomRotation()))
                        .animation(Animation.easeInOut(duration: 75).repeatForever(autoreverses: false).speed(4), value: isAnimated)
                        .onAppear {
                            isAnimated = true
                        }
                }
                .edgesIgnoringSafeArea(.top)
            }
        }
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
