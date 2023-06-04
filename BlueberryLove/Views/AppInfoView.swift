//
//  AppInfoView.swift
//  BlueberryLove
//
//  Created by Patka on 04/06/2023.
//

import SwiftUI

struct AppInfoView: View {
    var body: some View {
        ZStack {
            Image(Constants.backgroundImage)
                .resizable()
                .edgesIgnoringSafeArea(.top)
            VStack  {
                TitleView(title: "App Info", color: .black)
    
                VStack (spacing: 20) {
                    ForEach(appInfo, id: \.id) { info in
                        
                            HStack {
                                Text(info.title)
                                Spacer()
                                if info.isLink {
                                    Link(destination: URL(string: info.description)!) {
                                        Text(info.description)
                                    }
                                } else {
                                    Text(info.description)
                                }
                            }
                            Divider()
                    }
                }
                .padding()
                Spacer()
            }
        }
    }
}

struct AppInfoView_Previews: PreviewProvider {
    static var previews: some View {
        AppInfoView()
    }
}
