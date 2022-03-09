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
    
    var days = ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
    let plans = plansTestData
    
    var body: some View {
        NavigationView {
                ScrollView {
                    VStack {
                        Spacer()
                        topBarButton()
                        
                        ForEach(0..<7) {
                            Divider()
                            Text("\(days[$0])")
                                .foregroundColor(Color("textColor"))
                                .font(.title)
                            Text("03/02")
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
    var plans: [Recipe]
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                VStack {
                    Text("Breakfast")
                    Text("\(plans[0].title)")
                    Text("\(plans[0].difficulty) | \(plans[0].prepTime) mins")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                    AsyncImage(url: URL(string: plans[0].imageUrl)) { image in
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
                    Text("\(plans[1].title)")
                    Text("\(plans[1].difficulty) | \(plans[1].prepTime) mins")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                    AsyncImage(url: URL(string: plans[1].imageUrl)) { image in
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
                    Text("\(plans[2].title)")
                    Text("\(plans[2].difficulty) | \(plans[2].prepTime) mins")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                    AsyncImage(url: URL(string: plans[2].imageUrl)) { image in
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
