//
//  RecipeDetailView.swift
//  My Chef-SwiftUI
//
//  Created by Zach Huang on 2022/3/2.
//

import SwiftUI

struct RecipeDetailView: View {
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: "https://www.twopeasandtheirpod.com/wp-content/uploads/2020/05/Shakshuka-2.jpg")) { image in
                        image
                            .resizable()
                            .scaledToFill()
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 500, height: 200)
                        .background(Color.gray)
                        .cornerRadius(15.0)
            Text("A classic mediterranean breakfast")
            
            Divider()
            
            PrepView()
            
            Divider()
            
            Text("Ingredients")
                .font(.largeTitle)
            
            IngredientsView()
            
            Text("Directions")
                .font(.largeTitle)
            Text("1. There’s gorgeous Mediterranean weather year round in Tel Aviv, but let me tell you, the food scene is definitely something to write home about. I ate. And ate. And ate. Everything is fresh, veggie-heavy, loaded with herbs and layered with flavor. It’s a dream city for vegetarians and those who just like phenomenal food.\n 2. There’s gorgeous Mediterranean weather year round in Tel Aviv, but let me tell you, the food scene is definitely something to write home about. I ate. And ate. And ate. Everything is fresh, veggie-heavy, loaded with herbs and layered with flavor. It’s a dream city for vegetarians and those who just like phenomenal food.")
                .padding(.horizontal)
            
        }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView()
    }
}

struct IngredientsView: View {
    var body: some View {
        HStack {
            Spacer()
            VStack(alignment: .leading) {
                Text("Required")
                    .font(.title)
                Text("1 onion")
                Text("2 tomato")
            }
            Spacer()
            Divider()
            Spacer()
            VStack(alignment: .leading) {
                Text("My Pantry")
                    .font(.title)
                Text("1 onion")
                Text("2 tomato")
            }
            Spacer()
        }
    }
}

struct PrepView: View {
    var body: some View {
        HStack {
            Spacer()
            VStack(alignment: .leading) {
                Text("Total Time: 1 hour")
                Text("Prep Time: 15 mins")
            }
            Spacer()
            Divider()
            Spacer()
            VStack(alignment: .leading) {
                Text("Serving: 4")
                Text("Difficulty: Easy")
            }
            Spacer()
        }
    }
}
