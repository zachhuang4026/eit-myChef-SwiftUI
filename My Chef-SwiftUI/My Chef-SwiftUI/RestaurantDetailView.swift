//
//  RestaurantDetailView.swift
//  My Chef-SwiftUI
//
//  Created by Zach Huang on 2022/3/9.
//

import SwiftUI

struct RestaurantDetailView: View {
    let restaurant: Restaurant
    
    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: restaurant.imageUrl)) { image in
                                    image
                                        .resizable()
                                        .scaledToFill()
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    .frame(maxWidth: .infinity, maxHeight: 200)
                                    .background(Color.gray)
                                    .cornerRadius(15.0)
            Text("\(restaurant.description)")
                            .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.secondary)
                        
            Divider()
            Text("Address:")
                .font(.title)
            Text("\(restaurant.address)")
                    .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
            Divider()
            Text("Recommended Dishes:")
                .font(.title)
            Text("\(restaurant.dishes)")
            
        }
        .navigationTitle("\(restaurant.title)")
    }
}

struct RestaurantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantDetailView(restaurant: greekPrime)
    }
}
