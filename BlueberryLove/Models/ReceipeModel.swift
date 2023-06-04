//
//  ReceipeModel.swift
//  BlueberryLove
//
//  Created by Patka on 04/06/2023.
//

import Foundation

struct Receipe: Identifiable {
  var id = UUID()
  var title: String
  var headline: String
  var image: String
  var rating: Int
  var serves: Int
  var preparation: Int
  var cooking: Int
  var instructions: [String]
  var ingredients: [String]
}
