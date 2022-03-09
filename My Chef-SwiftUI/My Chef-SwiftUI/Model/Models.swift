//
//  Models.swift
//  module-7-github-issues-swiftui
//
//  Created by Andrew Binkowski on 2/22/22.
//

import Foundation

struct Recipe: Codable, Identifiable, Hashable {
    let title: String
    let id: String
    let description: String
    let servings: String
    let difficulty: String
    let prepTime: String
    let imageUrl: String
    let ingredients: String
    let instructions: String
    
}

struct Grocery: Codable, Identifiable, Hashable {
    let title: String
    let id: String
    let buyDate: String
    let amount: String
}

struct Ingredient: Codable, Identifiable, Hashable {
    let id: String
    let title: String
    let quantity: String
    let quantifier: String
    let state: String
}

struct Restaurant:  Codable, Identifiable, Hashable {
    let id: String
    let title: String
    let address: String
    let price: String
    let dishes: String
    let description: String
    let imageUrl: String
}


func convertToDictionary(text: String) -> [Ingredient]? {
    if let data = text.data(using: .utf8) {
        do {
            return try JSONSerialization.jsonObject(with: data, options: []) as? [Ingredient]
        } catch {
            print(error.localizedDescription)
        }
    }
    return nil
}


let carrot = Ingredient(id: "1",
                        title: "carrot",
                        quantity: "2",
                        quantifier: "piece",
                        state: "open")
let water = Ingredient(id: "1",
                       title: "water",
                       quantity: "2",
                       quantifier: "cup",
                       state: "open")

let avocadoToast = Recipe(title:"Avocado Toast",
                          id: "avt_2345",
                          description: "You won’t believe",
                          servings: "2-3",
                          difficulty: "Easy",
                          prepTime: "20",
                          imageUrl: "https://www.macheesmo.com/wp-content/uploads/2018/10/Everything-Avocado-Toast.jpg",
                         ingredients: "[\n {\"id\": \"sal\",\n  \"title\": \"salmon\",\n  \"quantity\": \"3\",\n  \"quantifier\": \"piece\",\n  \"state\": \"open\"\n },\n {\"id\": \"oli1\",\n  \"title\": \"olive_oil\",\n  \"quantity\": \"2\",\n  \"quantifier\": \"teaspoon\",\n  \"state\": \"open\"\n },\n {\"id\": \"bu\",\n  \"title\": \"butter\",\n  \"quantity\": \"2\",\n  \"quantifier\": \"tablespoon\",\n  \"state\": \"open\"\n },\n {\"id\": \"ga\",\n  \"title\": \"garlic\",\n  \"quantity\": \"4\",\n  \"quantifier\": \"piece\",\n  \"state\": \"open\"\n },\n {\"id\": \"yon\",\n  \"title\": \"yellow_onion\",\n  \"quantity\": \"1\",\n  \"quantifier\": \"piece\",\n  \"state\": \"open\"\n },\n {\"id\": \"br\",\n  \"title\": \"broth\",\n  \"quantity\": \"1/3\",\n  \"quantifier\": \"cup(80ml)\",\n  \"state\": \"open\"\n },\n {\"id\": \"to\",\n  \"title\": \"tomato\",\n  \"quantity\": \"1\",\n  \"quantifier\": \"piece\",\n  \"state\": \"open\"\n },\n {\"id\": \"hvyc\",\n  \"title\": \"heavy_cream\",\n  \"quantity\": \"1 3/4\",\n  \"quantifier\": \"cup(80ml)\",\n  \"state\": \"open\"\n },\n {\"id\": \"sa\",\n  \"title\": \"salt\",\n  \"quantity\": \"1\",\n  \"quantifier\": \"teaspoon\",\n  \"state\": \"open\"\n },\n {\"id\": \"bp\",\n  \"title\": \"black_pepper\",\n  \"quantity\": \"1\",\n  \"quantifier\": \"tea spoon\",\n  \"state\": \"open\"\n },\n {\"id\": \"spin\",\n  \"title\": \"spinach\",\n  \"quantity\": \"3\",\n  \"quantifier\": \"cup(80ml)\",\n  \"state\": \"open\"\n },\n {\"id\": \"par2\",\n  \"title\": \"parmesan\",\n  \"quantity\": \"1/2\",\n  \"quantifier\": \"cup(80ml)\",\n  \"state\": \"open\"\n }\n]",
                          instructions: "Slice avocado, smash it, paste it on the toast, add some pepper."
                        )
let pasta = Recipe(title:"Pasta",
                   id: "pas_2345",
                   description: "You won’t believe",
                   servings: "2-3",
                   difficulty: "Easy",
                   prepTime: "10",
                   imageUrl: "https://www.simplyrecipes.com/thmb/0AmnWWJK6-_PVcLOjD88oDIxAXM=/1600x900/smart/filters:no_upscale()/__opt__aboutcom__coeus__resources__content_migration__simply_recipes__uploads__2013__02__pasta-puttanesca-fork-horiz-1600-aeb7e018a32b4bc2ae85ea893cabdb40.jpg",
                  ingredients: "[\n {\"id\": \"ct\",\n  \"title\": \"chicken thighs\",\n  \"quantity\": \"1/2\",\n  \"quantifier\": \"lbs\",\n  \"state\": \"open\"\n },\n {\"id\": \"wt\",\n  \"title\": \"water\",\n  \"quantity\": \"4\",\n  \"quantifier\": \"cup\",\n  \"state\": \"open\"\n },\n  {\"id\": \"uslb\",\n  \"title\": \"unsalted_butter\",\n  \"quantity\": \"1/2\",\n  \"quantifier\": \"tablespoon\",\n  \"state\": \"open\"\n },\n {\"id\": \"vgo\",\n  \"title\": \"vegetable_oil\",\n  \"quantity\": \"1\",\n  \"quantifier\": \"teaspoon\",\n  \"state\": \"open\"\n },\n {\"id\": \"on\",\n  \"title\": \"onion\",\n  \"quantity\": \"1\",\n  \"quantifier\": \"piece\",\n  \"state\": \"open\"\n },\n {\"id\": \"ca1\",\n  \"title\": \"carrot\",\n  \"quantity\": \"1/2\",\n  \"quantifier\": \"piece\",\n  \"state\": \"open\"\n },\n {\"id\": \"yp\",\n  \"title\": \"yellow_potato\",\n  \"quantity\": \"2\",\n  \"quantifier\": \"piece\",\n  \"state\": \"open\"\n },\n {\"id\": \"rdp\",\n  \"title\": \"red_pepper\",\n  \"quantity\": \"1/2\",\n  \"quantifier\": \"piece\",\n  \"state\": \"open\"\n },\n {\"id\": \"aghp\",\n  \"title\": \"angle_hair_pasta\",\n  \"quantity\": \"4\",\n  \"quantifier\": \"oz\",\n  \"state\": \"open\"\n },\n {\"id\": \"vga\",\n  \"title\": \"vegeta\",\n  \"quantity\": \"1/2\",\n  \"quantifier\": \"teaspoon\",\n  \"state\": \"open\"\n },\n {\"id\": \"sa\",\n  \"title\": \"salt\",\n  \"quantity\": \"1/2\",\n  \"quantifier\": \"teaspoon\",\n  \"state\": \"open\"\n },\n {\"id\": \"bp\",\n  \"title\": \"black_pepper\",\n  \"quantity\": \"1/4\",\n  \"quantifier\": \"teaspoon\",\n  \"state\": \"open\"\n },\n {\"id\": \"ba3\",\n  \"title\": \"bay_leaves\",\n  \"quantity\": \"1\",\n  \"quantifier\": \"piece\",\n  \"state\": \"open\"\n },\n {\"id\": \"ga\",\n  \"title\": \"garlic\",\n  \"quantity\": \"1/2\",\n  \"quantifier\": \"piece\",\n  \"state\": \"open\"\n }\n]",
                  instructions: "Cook the pasta for 10 minutes, add tomato sauce."
               )

let greekPrime = Restaurant(
    id: "1",
    title: "Greek Prime",
    address: "901 W 35th St, Chicago, IL 60609",
    price: "$20-30 per person",
    dishes: "Gyro (Lamb Meat) Platter, Sides: Rice, Salad, or Fries",
    description: "I (Kevin) went here the other day and really enjoyed the food. As a fan of Greek food, I found the portions to large and the price reasonable for the amount of food we got. Service was a little slow so a sit down may not be perfect in you are in a rush, but I think that would make takeout is a great option!",
    imageUrl: "https://cdn.usarestaurants.info/assets/uploads/5acde208230318c28b8cfdbc6ccb0a01_-united-states-illinois-cook-county-chicago-greek-prime-773-565-4690htm.jpg"
)

let recipesTestData = [avocadoToast, pasta]

let plansTestData = [
    [avocadoToast, pasta, pasta],
    [pasta, pasta, pasta],
    [pasta, pasta, avocadoToast],
    [avocadoToast, avocadoToast, avocadoToast],
    [pasta, avocadoToast, pasta],
    [pasta, pasta, pasta],
    [pasta, avocadoToast, pasta]
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
