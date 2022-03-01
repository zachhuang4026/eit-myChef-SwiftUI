//
//  OpenIssuesView.swift
//  GitHub Issues
//
//  Created by Zach Huang on 2022/2/25.
//

import SwiftUI


struct PlansView: View {
    var days = ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
    
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
                    Divider()
                    HStack {
                        ScrollView(.horizontal) {
                            Text("Breakfast")
                            Text("Avocado Toast")
                            AsyncImage(url: URL(string: "https://www.macheesmo.com/wp-content/uploads/2018/10/Everything-Avocado-Toast-2016x1400.webp")) { image in
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
    }
}

struct PlansView_Previews: PreviewProvider {
    static var previews: some View {
        PlansView()
    }
}
