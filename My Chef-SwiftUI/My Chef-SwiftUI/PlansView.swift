//
//  OpenIssuesView.swift
//  GitHub Issues
//
//  Created by Zach Huang on 2022/2/25.
//

import SwiftUI

let coloredNavAppearance = UINavigationBarAppearance()

struct PlansView: View {
    
    init() {
            coloredNavAppearance.configureWithOpaqueBackground()
            coloredNavAppearance.backgroundColor = .systemBlue
            coloredNavAppearance.titleTextAttributes = [.foregroundColor: Color("textColor")]
            coloredNavAppearance.largeTitleTextAttributes = [.foregroundColor: Color("backgroundColor")]
                   
            UINavigationBar.appearance().standardAppearance = coloredNavAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = coloredNavAppearance

        }
    
    var days = ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
    let recipe = recipesTestData[0]
    
    var body: some View {
        NavigationView {
                ScrollView {
                    VStack {
                        topBarButton()
                        
                        ForEach(0..<7) {
                            Divider()
                            Text("\(days[$0])")
                                .foregroundColor(Color("textColor"))
                                .font(.title)
                            Text("03/02")
                            Divider()
                            mealsScrollView(recipe: recipe)
                        }
                        
                    }
                }
                .navigationTitle("Meals for the week")
        }
        
    }
}

struct PlansView_Previews: PreviewProvider {
    static var previews: some View {
        PlansView()
    }
}

struct topBarButton: View {
    var body: some View {
        HStack {
            Spacer()
            Button(action: {
            }) {
                NavigationLink(destination: GroceryListView()) {
                Text("Generate \n Grocery List")
                }
            }
            .padding()
            .background(Color("buttonColor"))
            .foregroundColor(Color("textColor"))
            .lineLimit(2)
            .cornerRadius(15.0)
            
            Spacer()
            Button(action: {
            }) {
                NavigationLink(destination: FridgeView()) {
                Text("View \n My Fridge")
                }
            }
            .padding()
            .background(Color("buttonColor"))
            .foregroundColor(Color("textColor"))
            .lineLimit(2)
            .cornerRadius(15.0)
            
            Spacer()
        }
    }
}

struct mealsScrollView: View {
    var recipe: Recipe
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                VStack {
                    Text("Breakfast")
                    Text("\(recipe.title)")
                    Text("\(recipe.difficulty) | \(recipe.prepTime) mins")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                    AsyncImage(url: URL(string: recipe.imageUrl)) { image in
                        image
                            .resizable()
                            .scaledToFill()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 100, height: 100)
                    .background(Color.gray)
                    .cornerRadius(15.0)
                }
                VStack {
                    Text("Lunch")
                    Text("\(recipe.title)")
                    Text("\(recipe.difficulty) | \(recipe.prepTime) mins")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                    AsyncImage(url: URL(string: recipe.imageUrl)) { image in
                        image
                            .resizable()
                            .scaledToFill()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 100, height: 100)
                    .background(Color.gray)
                    .cornerRadius(15.0)
                }
                VStack {
                    Text("Dinner")
                    Text("\(recipe.title)")
                    Text("\(recipe.difficulty) | \(recipe.prepTime) mins")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                    AsyncImage(url: URL(string: recipe.imageUrl)) { image in
                        image
                            .resizable()
                            .scaledToFill()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 100, height: 100)
                    .background(Color.gray)
                    .cornerRadius(15.0)
                }
            }
            
            
        }
        .padding()
    }
}
