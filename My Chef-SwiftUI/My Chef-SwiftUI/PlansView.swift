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
        ScrollView {
            VStack {
                HStack {
                    Spacer()
                    Button("Generate \n Grocery List") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .padding()
                    .background(Color("buttonColor"))
                    .foregroundColor(Color("textColor"))
                    .lineLimit(2)
                    .cornerRadius(15.0)
                    
                    Spacer()
                    
                    Button("View \n My Fridge") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .padding()
                    .background(Color("buttonColor"))
                    .foregroundColor(Color("textColor"))
                    .lineLimit(2)
                    .cornerRadius(15.0)
                    
                    Spacer()
                }
                
                ForEach(0..<7) {
                    Divider()
                    Text("\(days[$0])")
                        .foregroundColor(Color("textColor"))
                        .font(.title)
                    Text("03/02")
                    Divider()
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
        }
    }
}

struct PlansView_Previews: PreviewProvider {
    static var previews: some View {
        PlansView(recipes: recipesTestData)
    }
}
