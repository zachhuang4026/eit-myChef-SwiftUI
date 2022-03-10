//
//  GroceryListView.swift
//  My Chef-SwiftUI
//
//  Created by Zach Huang on 2022/3/1.
//

import SwiftUI

struct GroceryListView: View {
    
    @ObservedObject var ingredientData: IngredientData
    
    var body: some View {
            VStack {
                List (ingredientData.ingredients) {grocery in
                    ExtractedView(grocery: grocery)
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
                // redirect to Amazon Fresh
                Link("Purchase on \n Amazon Fresh", destination: URL(string: "https://www.amazon.com/alm/storefront?almBrandId=QW1hem9uIEZyZXNo")!)
            }
            .padding()
            .background(Color("buttonColor"))
            .foregroundColor(Color("textColor"))
            .lineLimit(2)
            .cornerRadius(15.0)
            
            Spacer()
            
            Button(action: actionSheet) {
                // export to reminder or share
                Text("Export List \n to Notes")
            }
            .padding()
            .background(Color("buttonColor"))
            .foregroundColor(Color("textColor"))
            .lineLimit(2)
            .cornerRadius(15.0)
            
            Spacer()
        }
    }
    
    func actionSheet() {
        guard let urlShare = URL(string: "https://developer.apple.com/xcode/swiftui/") else { return }
        let activityVC = UIActivityViewController(activityItems: [urlShare], applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController?.present(activityVC, animated: true, completion: nil)
    }
}

struct ExtractedView: View {
    @State private var amount = 2
    let grocery: Ingredient
    var body: some View {
        HStack {
            // AMOUNT BUG NOT FIXED YET -
            Stepper("\(grocery.title.replacingOccurrences(of: "_", with: " ").capitalized): \(amount) lbs", value: $amount, in: 0...100)
        }
        .padding()
        .navigationTitle("Generate Grocery List")
    }
}
