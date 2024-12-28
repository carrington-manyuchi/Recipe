//
//  RecipeModel.swift
//  Recipe
//
//  Created by Manyuchi, Carrington C on 2024/12/28.
//

import Foundation

struct RecipeModel: Identifiable {
    let id = UUID()
    let name: String
    let caloriesPer100Grams: Int
    let recipe: String
    let recipeImage: String
    let recipeURL: String
}
