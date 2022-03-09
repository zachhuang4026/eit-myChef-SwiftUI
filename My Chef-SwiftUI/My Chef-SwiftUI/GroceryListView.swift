//
//  GroceryListView.swift
//  My Chef-SwiftUI
//
//  Created by Zach Huang on 2022/3/1.
//

import SwiftUI

struct GroceryListView: View {
    @State private var amount = 2
    @ObservedObject var ingredientData: IngredientData
    
    var body: some View {
            VStack {
                List (ingredientData.ingredients) {grocery in
                    HStack {
                        // AMOUNT BUG NOT FIXED YET -
                        Stepper("\(grocery.title.replacingOccurrences(of: "_", with: " ").capitalized) buying: \(amount) lbs", value: $amount, in: 0...100)
                    }
                    .padding()
                    .navigationTitle("Generate Grocery List")
                }
                Spacer()
                buttomBarButton()
            }
    }
}

struct GroceryListView_Previews: PreviewProvider {
    static var previews: some View {
        GroceryListView(ingredientData: IngredientData())
    }
}

struct buttomBarButton: View {
    var body: some View {
        HStack {
            Spacer()
            Button(action: {
            }) {
                // REDIRECT TO AMAZON FRESH
                NavigationLink(destination: GroceryListView(ingredientData: IngredientData())) {
                    Text("Purchase on \n Amazon Fresh")
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
                // EXPORT TO APPLE NOTES API
                NavigationLink(destination: FridgeView()) {
                    Text("Export List \n to Apple Notes")
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
