//
//  RecipeDetailView.swift
//  My Chef-SwiftUI
//
//  Created by Zach Huang on 2022/3/2.
//

import SwiftUI

struct RecipeDetailView: View {
    
    let recipe: Recipe
    
    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: recipe.imageUrl)) { image in
                        image
                            .resizable()
                            .scaledToFill()
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(maxWidth: .infinity, maxHeight: 200)
                        .background(Color.gray)
                        .cornerRadius(15.0)
            Text("\(recipe.description)")
                .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
                .foregroundColor(.secondary)
            
            Divider()
            
            PrepView(recipe: recipe)
            
            Divider()
            
            Text("Ingredients")
                .font(.largeTitle)
                .foregroundColor(Color("titleColor"))
            
            IngredientsView(recipe: recipe)
            
            Divider()
            
            Text("Directions")
                .font(.largeTitle)
                .foregroundColor(Color("titleColor"))
            
            Text("\(recipe.instructions)")
                .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
            
            }
        .navigationTitle("\(recipe.title.replacingOccurrences(of: "_", with: " ").capitalized)")
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: recipesTestData[0])
    }
}

struct IngredientsView: View {
    let recipe: Recipe
    
    var body: some View {
        HStack {
            Spacer()
            VStack(alignment: .leading) {
                Text("Required")
                    .font(.title2)
                ForEach(recipe.ingredients) { item in
                    Text("\(item.title.replacingOccurrences(of: "_", with: " ").capitalized): \(item.quantity) \(item.quantifier)")
                        .font(.footnote)
                }
                
            }
            Spacer()
            Divider()
            Spacer()
            VStack(alignment: .leading) {
                Text("My Pantry")
                    .font(.title2)
                ForEach(recipe.ingredients) { item in
                    Text("\(item.state) \(item.title.replacingOccurrences(of: "_", with: " ").capitalized)")
                        .font(.footnote)
                }
            }
            Spacer()
        }
    }
}

struct PrepView: View {
    let recipe: Recipe
    
    var body: some View {
        HStack {
            Spacer()
            VStack(alignment: .leading) {
                Text("Prep Time: \(recipe.prepTime) mins")
            }
            Spacer()
            Divider()
            Spacer()
            VStack(alignment: .leading) {
                Text("Serving: \(recipe.servings.replacingOccurrences(of: "'", with: " "))")
                Text("Difficulty: \(recipe.difficulty)")
            }
            Spacer()
        }
    }
}
