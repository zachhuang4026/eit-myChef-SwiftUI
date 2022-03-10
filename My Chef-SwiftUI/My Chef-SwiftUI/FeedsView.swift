//
//  FeedsView.swift
//  My Chef-SwiftUI
//
//  Created by Zach Huang on 2022/3/9.
//

import SwiftUI

struct FeedsView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                PostOne()
                Image("soup")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 400)
                    .border(Color("textColor"))
                    .cornerRadius(20.0)
                
                Spacer()
                
                PostTwo()
                Image("egg_roll")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 400)
                    .border(Color("textColor"))
                    .cornerRadius(20.0)
                
                Spacer()
                
                PostThree()
                Image("chicken")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 400)
                    .border(Color("textColor"))
                    .cornerRadius(20.0)
                
                
            }
            .padding([.top, .leading, .trailing])
            .navigationTitle("Feeds")
        }
    }
}

struct FeedsView_Previews: PreviewProvider {
    static var previews: some View {
        FeedsView()
    }
}

struct PostOne: View {
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: "https://cdn.musebycl.io/2021-10/BCA%202021%20Sex%20Education%20Toilet%2C%20Teeth%2C%20Tits%20hed%202021.jpg")) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 50, height: 50)
            .background(Color.gray)
            .cornerRadius(30.0)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("AmyLuvU")
                        .fontWeight(.bold)
                    
                    Text("Mar 01 Tues")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
                Text("Made the Italian wedding soup! To taste good, the secret ingredient is SUGAR!")
                    .font(.caption)
            }
            
        }
    }
}

struct PostTwo: View {
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: "https://assets.popbuzz.com/2019/01/netflix-sex-education-cast-lily-iglehart-1547051560-view-0.png")) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 50, height: 50)
            .background(Color.gray)
            .cornerRadius(30.0)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("lilyPlanet")
                        .fontWeight(.bold)
                    
                    Text("Mar 02 Wed")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
                Text("My attempt at the snack omelette haha 🥰🥰 made smaller portion ")
                    .font(.caption)
            }
            
        }
    }
}

struct PostThree: View {
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxj-b0Ogg0MWQ7r4bblRI1KFg_DHeXUIPk1g&usqp=CAU")) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 50, height: 50)
            .background(Color.gray)
            .cornerRadius(30.0)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("eRiC")
                        .fontWeight(.bold)
                    
                    Text("Mar 03 Thurs")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
                Text("Sheet pan I made for lunch today! 🤘🏼")
                    .font(.caption)
            }
            
        }
    }
}

