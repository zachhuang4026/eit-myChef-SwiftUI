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
    let ingredients: [Ingredient]
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

let salmon = Ingredient(id: "sal",
                        title: "salmon",
                        quantity: "3",
                        quantifier: "piece",
                        state: "✅")

let oliveOil = Ingredient(id: "oli1",
                        title: "olive_oil",
                        quantity: "2",
                        quantifier: "teaspoon",
                        state: "✅")

let butter = Ingredient(id: "bu",
                        title: "butter",
                        quantity: "2",
                        quantifier: "tablespoon",
                        state: "✅")

let garlic = Ingredient(id: "ga",
                        title: "butter",
                        quantity: "4",
                        quantifier: "piece",
                        state: "❌")

let yellowOnion = Ingredient(id: "yon",
                        title: "yellow_onion",
                        quantity: "1",
                        quantifier: "piece",
                        state: "✅")

let broth = Ingredient(id: "br",
                        title: "broth",
                        quantity: "1/3",
                        quantifier: "cup (80ml)",
                        state: "✅")

let tomato = Ingredient(id: "to",
                        title: "tomato",
                        quantity: "1",
                        quantifier: "piece",
                        state: "❌")

let avocadoToast = Recipe(title:"Avocado Toast",
                          id: "avt_2345",
                          description: "You won’t believe",
                          servings: "2-3",
                          difficulty: "Easy",
                          prepTime: "20",
                          imageUrl: "https://www.macheesmo.com/wp-content/uploads/2018/10/Everything-Avocado-Toast.jpg",
                          ingredients: [carrot, water],
                          instructions: "Slice avocado, smash it, paste it on the toast, add some pepper."
                        )

let tusconSalmon = Recipe(title:"Tuscan Salmon Over Pasta",
                          id: "tsov",
                          description: "You won’t believe how easy and fast it is to cook salmon this way! These pan-seared salmon filets are juicy and tender on the inside with perfectly crisp edges. You’ll never want a regular salmon recipe again after trying this one!",
                          servings: "2-3",
                          difficulty: "easy",
                          prepTime: "20",
                          imageUrl: "https://thefoodcharlatan.com/wp-content/uploads/2020/05/Creamy-Tuscan-Salmon-30-Minute-Dinner-2.jpg",
                          ingredients: [salmon, oliveOil, butter, garlic, yellowOnion, broth, tomato],
                          instructions: "1. Heat the oil in a large skillet over medium-high heat. Season the salmon filets on both sides with salt and pepper, and sear in the hot pan, flesh-side down first, for 5 minutes on each side. Once salmon filets are cooked, remove from the pan and set aside.\n2. In the same pan, melt the butter in the remaining cooking juices leftover. Add in the garlic and fry until fragrant (about one minute). Add onion and stir fry until translucent. Add fresh tomatoes (or sun-dried tomatoes if you have for stronger taste). Finally, pour in the vegetable or chicken broth, and allow the sauce to reduce down slightly. \n3. At the same time, boil water in another pot and cook the pasta of your choice.\n4. Reduce heat to low, add the heavy cream, and bring to a gentle simmer while stirring occasionally. Season the cream sauce with salt and pepper. Add in the baby spinach and allow to wilt in the sauce, and add in the parmesan cheese. Allow the cream sauce to simmer for a further minute until cheese melts through. \n5. Add the grilled salmon filets back into the pan and spoon the sauce over each filet. Serve the delish creamy Tuscan salmon over pasta. Enjoy!")


let pasta = Recipe(title:"Pasta",
                   id: "pas_2345",
                   description: "You won’t believe",
                   servings: "2-3",
                   difficulty: "Easy",
                   prepTime: "10",
                   imageUrl: "https://www.simplyrecipes.com/thmb/0AmnWWJK6-_PVcLOjD88oDIxAXM=/1600x900/smart/filters:no_upscale()/__opt__aboutcom__coeus__resources__content_migration__simply_recipes__uploads__2013__02__pasta-puttanesca-fork-horiz-1600-aeb7e018a32b4bc2ae85ea893cabdb40.jpg",
                  ingredients: [carrot, water],
                  instructions: "Cook the pasta for 10 minutes, add tomato sauce."
               )

let salad = Recipe(title:"Salad",
                   id: "sld_2345",
                   description: "You won’t believe",
                   servings: "2-3",
                   difficulty: "Easy",
                   prepTime: "10",
                   imageUrl: "https://www.thespruceeats.com/thmb/S6hSYjz9-nUCPb_5bfuDIz15SwI=/2667x2000/smart/filters:no_upscale()/classic-caesar-salad-recipe-996054-Hero_01-33c94cc8b8e841ee8f2a815816a0af95.jpg",
                  ingredients: [carrot, water],
                  instructions: "Cook the pasta for 10 minutes, add tomato sauce."
               )

let mincePorkRice = Recipe(title:"Mince Pork Rice",
                           id: "mpr_123",
                           description: "Tawian's Best Choice",
                           servings: "2-3",
                           difficulty: "Easy",
                           prepTime: "10",
                           imageUrl: "https://i0.wp.com/themissinglokness.com/wp-content/uploads/2014/12/666B3012-3.jpg?fit=700%2C698&ssl=1",
                          ingredients: [carrot, water],
                          instructions: "Cook the pasta for 10 minutes, add tomato sauce."
                       )

let tomatoEggNoodle = Recipe(title:"Tomato Egg Noodle",
                           id: "ten",
                           description: "Tomato egg noodle, a vegetarian, go-to emergency meal on a busy day. Here I'm adding my own twist by adding garlic and sugar that make the sauce more flavorful. Enjoy!!",
                           servings: "2-3",
                           difficulty: "Easy",
                           prepTime: "10",
                           imageUrl: "https://www.saveur.com/uploads/2020/12/29/ADZ7URX7RBHTRJ77KJK4EGNQUU.jpg",
                          ingredients: [carrot, water],
                          instructions: "Cook the pasta for 10 minutes, add tomato sauce."
                       )

let japanChickenCurry = Recipe(title:"Japanese Chicken Curry",
                           id: "jcc",
                           description: "Tomato egg noodle, a vegetarian, go-to emergency meal on a busy day. Here I'm adding my own twist by adding garlic and sugar that make the sauce more flavorful. Enjoy!!",
                           servings: "2-3",
                           difficulty: "Easy",
                           prepTime: "10",
                           imageUrl: "https://www.justonecookbook.com/wp-content/uploads/2021/10/Japanese-Chicken-Curry-3769-II.jpg",
                          ingredients: [carrot, water],
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

let fiveGuys = Restaurant(
    id: "3",
    title: "Five Guys",
    address: "1456 E 53rd St, Chicago, IL 60615",
    price: "$10-15 per person",
    dishes: "Gyro (Lamb Meat) Platter, Sides: Rice, Salad, or Fries",
    description: "Try their best sell burger",
    imageUrl: "https://duyt4h9nfnj50.cloudfront.net/resized/bulk_actions_image_0d0e0a15-9ce7-4b87-abd2-c2d0453ec4ba-w2880-a1.jpg"
)

let grazianoGrocery = Restaurant(
    id: "2",
    title: "J.P. Graziano Grocery",
    address: "901 W Randolph St, Chicago, IL 60607",
    price: "$10-20 per person",
    dishes: "Mr. G sub, JPG Italian Beef (available after 6p)",
    description: "If you love a good Italian sub, look no further. J.P. Graziano is truly a Chicago institution and has been at the same location since 1938. Their Mr. G sub is to die for, and don’t forget to get a bottle of giardiniera with you home.",
    imageUrl: "https://jpgraziano.com/wp-content/uploads/2017/03/beef-300x220.jpeg?x30419"
)

let recipesTestData = [avocadoToast, pasta]

let plansTestData = [
    [avocadoToast, greekPrime, salad, tusconSalmon],
    [pasta, mincePorkRice, salad, grazianoGrocery],
    [avocadoToast, fiveGuys, pasta, avocadoToast],
    [salad, japanChickenCurry, avocadoToast, avocadoToast],
    [pasta, tomatoEggNoodle, avocadoToast, tomatoEggNoodle],
    [salad, pasta, avocadoToast, pasta],
    [pasta, avocadoToast, avocadoToast, pasta]
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
