//
//  ClosedIssueView.swift
//  GitHub Issues
//
//  Created by Zach Huang on 2022/2/25.
//

import SwiftUI

struct RecipesView: View {
    var days = ["Mon", "Tues", "Wed", "Thurs", "Fri", "Sat", "Sun"]
    @State private var selectedDay = "Tues"
    
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
                                
                                Picker("Choose a Day", selection: $selectedDay) {
                                                ForEach(days, id: \.self) {
                                                    Text($0)
                                                }
                                            }
                            }
                            
                            Button(action: {
                                        }) {
                                            NavigationLink(destination: RecipeDetailView()) {
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
