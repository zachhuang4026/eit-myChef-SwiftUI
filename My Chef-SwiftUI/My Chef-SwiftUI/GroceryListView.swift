//
//  GroceryListView.swift
//  My Chef-SwiftUI
//
//  Created by Zach Huang on 2022/3/1.
//

import SwiftUI

struct GroceryListView: View {
    @State private var amount = 2
    
    var body: some View {
        NavigationView {
            HStack {
                Stepper("Carrot buying: \(amount) lbs", value: $amount, in: 0...100)
            }
            .padding()
            .navigationTitle("Generate Grocery List")
        }
        
    }
}

struct GroceryListView_Previews: PreviewProvider {
    static var previews: some View {
        GroceryListView()
    }
}
