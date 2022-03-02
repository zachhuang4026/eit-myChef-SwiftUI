//
//  OpenIssuesView.swift
//  GitHub Issues
//
//  Created by Zach Huang on 2022/2/25.
//

import SwiftUI

struct PlansView: View {
    var days = ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
    var recipes: [Recipe] = []
    
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
                        mealsScrollView()
                    }
                    
                }
            }
            .navigationTitle("Meals for the week")
        }
        
    }
}

struct PlansView_Previews: PreviewProvider {
    static var previews: some View {
        PlansView(recipes: recipesTestData)
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
                NavigationLink(destination: GroceryListView()) {
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
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                VStack {
                    Text("Breakfast")
                    Text("Avocado Toast")
                    Text("Easy | 10 mins")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                    AsyncImage(url: URL(string: "https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png")) { image in
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
                    Text("Pasta")
                    Text("Easy | 10 mins")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                    AsyncImage(url: URL(string: "https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png")) { image in
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
                    Text("Pasta")
                    Text("Easy | 10 mins")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                    AsyncImage(url: URL(string: "https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png")) { image in
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
