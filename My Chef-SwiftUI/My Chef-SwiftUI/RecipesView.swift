//
//  ClosedIssueView.swift
//  GitHub Issues
//
//  Created by Zach Huang on 2022/2/25.
//

import SwiftUI

struct RecipesView: View {
    
    var body: some View {
        let recipes = recipesTestData
        let gridItemLayout = [GridItem(.flexible()), GridItem(.flexible())]
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridItemLayout, spacing: 5) {
                    ForEach(recipes, id: \.self) {recipe in
                        VStack {
                            Spacer()
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("\(recipe.title)")
                                    Text("\(recipe.difficulty) | \(recipe.prepTime) mins")
                                        .font(.footnote)
                                        .foregroundColor(.secondary)
                                }
                                Image(systemName: "star.fill")
                                    .foregroundColor(.black)
                                    .frame(width: 30, height: 30)
                            }
                            AsyncImage(url: URL(string: recipe.imageUrl)) { image in
                                        image
                                            .resizable()
                                            .scaledToFill()
                                        } placeholder: {
                                            ProgressView()
                                        }
                                        .frame(width: 120, height: 120)
                                        .background(Color.gray)
                                        .cornerRadius(15.0)
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
        RecipesView()
    }
}
