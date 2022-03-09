//
//  ModelData.swift
//  My Chef-SwiftUI
//
//  Created by Zach Huang on 2022/3/9.
//

import Foundation

class IngredientData: ObservableObject {
    @Published var ingredients: [Ingredient] = []
    
    init() {
            let url = Bundle.main.url(forResource: "Ingredients", withExtension: "json")!
            
            let task = URLSession.shared.dataTask(with: url) { data, _, error in
                
                guard let data = data, error == nil else {
                    
                    return
                }
                
                let decoder = JSONDecoder()
                let ingredient = try? decoder.decode([Ingredient].self, from: data)
                
                DispatchQueue.main.async {
                    if let ingredient = ingredient {
                        self.ingredients = ingredient.filter({ $0.state == "open" })
                        //print(self.ingredients)
                    }
                }
                
            }
            task.resume()
        }
}

class RecipeData: ObservableObject {
    @Published var recipes: [Recipe] = []
    
    init() {
            let url = Bundle.main.url(forResource: "Recipes", withExtension: "json")!
            
            let task = URLSession.shared.dataTask(with: url) { data, _, error in
                
                guard let data = data, error == nil else {
                    return
                }
                
                let decoder = JSONDecoder()
                let recipe = try? decoder.decode([Recipe].self, from: data)
                print("JSON")
                DispatchQueue.main.async {
                    if let recipe = recipe {
                        self.recipes = recipe.filter({ $0.imageUrl != "" })
                        print(self.recipes)
                    }
                }
                
            }
            task.resume()
        }
}
