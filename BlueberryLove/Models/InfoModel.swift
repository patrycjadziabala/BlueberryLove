//
//  InfoModel.swift
//  BlueberryLove
//
//  Created by Patka on 04/06/2023.
//

import Foundation

struct AppInfo: Identifiable {
    var id = UUID()
    var title: String
    var description: String
    var isLink: Bool    
}
