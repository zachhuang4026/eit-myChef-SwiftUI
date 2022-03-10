//
//  FridgeView.swift
//  My Chef-SwiftUI
//
//  Created by Zach Huang on 2022/3/1.
//

import SwiftUI

struct FridgeView: View {
    var body: some View {
        // sort by buyDate
        let groceries = groceryTestData.sorted(by: {(g1: Grocery, g2: Grocery) -> Bool in return g1.buyDate.compare(g2.buyDate) == .orderedAscending})
        
        
        VStack {
            List (groceries) {grocery in
                HStack {
                    Spacer()
                    VStack(alignment: .leading) {
                        Text("\(grocery.title)")
                        Text("Amount: \(grocery.amount)")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                    }
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    Text("V")
                        .foregroundColor(.green)
                    Spacer()
                    Text("\(grocery.buyDate)")
                    Spacer()
                }
                .padding()
                .navigationTitle("My Fridge")
            }
            Spacer()
        }
        
    }
}

struct FridgeView_Previews: PreviewProvider {
    static var previews: some View {
        FridgeView()
    }
}
