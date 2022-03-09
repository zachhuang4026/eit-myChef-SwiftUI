//
//  ClosedIssueView.swift
//  GitHub Issues
//
//  Created by Zach Huang on 2022/2/25.
//

import SwiftUI

struct RecipesView: View {
    
    @ObservedObject var recipeData: RecipeData
    
    var body: some View {
        
        let gridItemLayout = [GridItem(.flexible()), GridItem(.flexible())]
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridItemLayout, spacing: 5) {
                    ForEach(recipeData.recipes) {recipe in
                        VStack {
                            Spacer()
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("\(recipe.title.replacingOccurrences(of: "_", with: " ").capitalized)")
                                    Text("\(recipe.difficulty) | \(recipe.prepTime) mins")
                                        .font(.footnote)
                                        .foregroundColor(.secondary)
                                }
                                VStack {
                                    DaysPicker()
                                    MealsPicker()
                                }
                            }
                            
                            ImageButton(recipe: recipe)
                            
                            Spacer()
                        }
                        
                        
                    }
                }
            }
            .navigationTitle("Recipes")
        }
    }
}

struct RecipesView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesView(recipeData: RecipeData())
    }
}

struct ImageButton: View {
    let recipe: Recipe
    
    var body: some View {
        Button(action: {
        }) {
            NavigationLink(destination: RecipeDetailView(recipe: recipe)) {
                AsyncImage(url: URL(string: recipe.imageUrl)) { image in
                    image
                        .resizable()
                        .scaledToFill()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 150, height: 120)
                .background(Color.gray)
                .cornerRadius(15.0)
            }
        }
    }
}

struct DaysPicker: View {
    var days = ["Mon", "Tues", "Wed", "Thurs", "Fri", "Sat", "Sun"]
    @State private var selectedDay = "Tues"
    
    var body: some View {
        Picker("days pick", selection: $selectedDay) {
            ForEach(days, id: \.self) {
                Text($0)
                    .font(.body)
                    .multilineTextAlignment(.leading)
            }
        }
        .frame(width: 50, height: 20)
        .background(Color("buttonColor"))
        .cornerRadius(10)
    }
}

struct MealsPicker: View {
    var meals = ["Breakfast", "Lunch", "Snack", "Dinner"]
    @State private var selectedMeal = "Lunch"

    var body: some View {
        Picker("meals pick", selection: $selectedMeal) {
            ForEach(meals, id: \.self) {
                Text($0)
                    .font(.body)
                    .multilineTextAlignment(.leading)
            }
        }
        .frame(width: 50, height: 20)
        .background(Color("buttonColor"))
        .cornerRadius(10)
    }
}
