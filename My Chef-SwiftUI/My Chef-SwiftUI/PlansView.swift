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
            coloredNavAppearance.backgroundColor = UIColor(red: 0.61, green: 0.77, blue: 0.63, alpha: 1.00)
        coloredNavAppearance.titleTextAttributes = [.foregroundColor: UIColor(red: 0.12, green: 0.14, blue: 0.13, alpha: 1.00)]
        coloredNavAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor(red: 0.12, green: 0.14, blue: 0.13, alpha: 1.00)]
                   
            UINavigationBar.appearance().standardAppearance = coloredNavAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = coloredNavAppearance

        }
    
    let plans = plansTestData
    
    let now = Date.now
    
    var body: some View {
        NavigationView {
                ScrollView {
                    VStack {
                        Spacer()
                        topBarButton()
                        
                        ForEach(0..<7) {
                            Divider()
                            // date time https://www.hackingwithswift.com/books/ios-swiftui/working-with-dates
                            Text(Date.now.addingTimeInterval(TimeInterval(86400*$0)), format: .dateTime.weekday())
                                .foregroundColor(Color("textColor"))
                                .font(.title)
                            Text(Date.now.addingTimeInterval(TimeInterval(86400*$0)), format: .dateTime.day().month())
                            Divider()
                            mealsScrollView(plans: plansTestData[$0])
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
                NavigationLink(destination: GroceryListView(ingredientData: IngredientData())) {
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
    var plans: [Any]
    let meals = ["Breakfast", "Lunch", "Snack", "Dinner"]
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(0..<4) {
                    MealsView(meal: meals[$0], item: plans[$0])
                }
                
            }
        }
        .padding()
    }
}

struct MealsView: View {
    //let recipe: Recipe
    let meal: String
    let item: Any
    
    var body: some View {
        if let recipe = item as? Recipe {
            VStack {
                Text("\(meal)")
                Text("\(recipe.title)")
                Text("\(recipe.difficulty) | \(recipe.prepTime) mins")
                    .font(.footnote)
                    .foregroundColor(.secondary)
                
                NavigationLink(destination: RecipeDetailView(recipe: recipe)){
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
        } else if let restaurant = item as? Restaurant {
            VStack {
                Text("\(meal)")
                Text("\(restaurant.title)")
                Text("Eat Out!")
                    .font(.footnote)
                    .foregroundColor(.secondary)
                NavigationLink(destination: RestaurantDetailView(restaurant: restaurant)){
                    AsyncImage(url: URL(string: restaurant.imageUrl)) { image in
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
        
    }
}

