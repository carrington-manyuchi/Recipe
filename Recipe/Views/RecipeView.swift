//
//  ContentView.swift
//  Recipe
//
//  Created by Manyuchi, Carrington C on 2024/12/28.
//

import SwiftUI

struct RecipeView: View {
    @StateObject var recipeViewModel: RecipeViewModel = RecipeViewModel()
    
    var body: some View {
        NavigationView {
            List(self.recipeViewModel.recipeModels) { item in
                NavigationLink {
                    ShowRecipeView(
                        theRecipe: item.recipe,
                        imageName: item.recipeImage,
                        recipeURL: item.recipeURL
                    )
                } label: {
                    ListItemsView(
                        name: item.name,
                        caloriesPer100Grams: item.caloriesPer100Grams,
                        recipeImage: item.recipeImage
                    )
                }

            }
            .listStyle(.grouped)
            .navigationTitle("Recipes")
        }
    }
}

#Preview {
    RecipeView()
}
