//
//  Models.swift
//  module-7-github-issues-swiftui
//
//  Created by Andrew Binkowski on 2/22/22.
//

import Foundation

struct Recipe: Codable, Identifiable {
    let title: String
    // We can use GitHub to conformt to `Identifiable`
    let id: String
    let prepTime: String
    let difficulty: String
    let body: String
    let imageUrl: String
}

let recipesTestData = [
    Recipe(title:"Avocado Toast",
            id: "avt_2345",
            prepTime: "20",
            difficulty: "Easy",
            body: "Slice avocado, smash it, paste it on the toast, add some pepper.",
            imageUrl: "https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png"
          ),
    Recipe(title:"Pasta",
            id: "pas_2345",
            prepTime: "10",
            difficulty: "Easy",
            body: "Cook the pasta for 10 minutes, add tomato sauce.",
            imageUrl: "https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png"),

]
