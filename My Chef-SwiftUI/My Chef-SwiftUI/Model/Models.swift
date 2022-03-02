//
//  Models.swift
//  module-7-github-issues-swiftui
//
//  Created by Andrew Binkowski on 2/22/22.
//

import Foundation

struct Recipe: Codable, Identifiable {
    let title: String
    let id: String
    let prepTime: String
    let difficulty: String
    let body: String
    let imageUrl: String
}

struct Grocery: Codable, Identifiable {
    let title: String
    let id: String
    let buyDate: String
    let amount: String
}

let recipesTestData = [
    Recipe(title:"Avocado Toast",
            id: "avt_2345",
            prepTime: "20",
            difficulty: "Easy",
            body: "Slice avocado, smash it, paste it on the toast, add some pepper.",
            imageUrl: "https://www.macheesmo.com/wp-content/uploads/2018/10/Everything-Avocado-Toast.jpg"
          ),
    Recipe(title:"Pasta",
            id: "pas_2345",
            prepTime: "10",
            difficulty: "Easy",
            body: "Cook the pasta for 10 minutes, add tomato sauce.",
            imageUrl: "https://www.simplyrecipes.com/thmb/0AmnWWJK6-_PVcLOjD88oDIxAXM=/1600x900/smart/filters:no_upscale()/__opt__aboutcom__coeus__resources__content_migration__simply_recipes__uploads__2013__02__pasta-puttanesca-fork-horiz-1600-aeb7e018a32b4bc2ae85ea893cabdb40.jpg"),
]

let groceryTestData = [
    Grocery(title: "Carrot",
            id: "crt_1234",
            buyDate: "2021-02-03",
            amount: "2"
           ),
    Grocery(title: "Lemon",
            id: "lem_1234",
            buyDate: "2021-01-26",
            amount: "5"
           ),
    Grocery(title: "Fish",
            id: "fih_1234",
            buyDate: "2021-01-29",
            amount: "2"
           ),
    Grocery(title: "Garlic",
            id: "glc_1234",
            buyDate: "2021-01-28",
            amount: "10"
           ),
    Grocery(title: "Tomato",
            id: "tmt_1234",
            buyDate: "2021-02-03",
            amount: "1"
           ),
    Grocery(title: "Sausage",
            id: "ssg_1234",
            buyDate: "2021-01-29",
            amount: "10"
           ),
    Grocery(title: "Parsely",
            id: "psl_1234",
            buyDate: "2021-01-02",
            amount: "2"
           ),
    Grocery(title: "Chicken",
            id: "chk_1234",
            buyDate: "2021-02-01",
            amount: "10"
           ),
]
