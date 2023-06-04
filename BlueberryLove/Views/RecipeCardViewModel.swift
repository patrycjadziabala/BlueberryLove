//
//  RecipeCardViewModel.swift
//  BlueberryLove
//
//  Created by Patka on 04/06/2023.
//

import Foundation

// MOCK:)
class RecipeCardViewModel: ObservableObject {
    @Published var receipes: [Receipe] = []
    
    init() {
        getRecipes()
    }
    
    func getRecipes() {
        // network get recipes
        // to nizej to jest juz pobrane (wink wink) z neta
        receipes = receipeData
    }
}
