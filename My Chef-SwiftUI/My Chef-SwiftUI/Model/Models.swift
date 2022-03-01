//
//  Models.swift
//  module-7-github-issues-swiftui
//
//  Created by Andrew Binkowski on 2/22/22.
//

import Foundation

struct GitHubUser: Codable {
    let login: String
    let avatarUrl: String?
}

struct GitHubIssue: Codable, Identifiable {
    let title: String?
    // We can use GitHub to conformt to `Identifiable`
    let id: UInt32?
    let createdAt: String?
    let body: String?
    let state: String?
    let user: GitHubUser
}

let bingo = GitHubUser(login: "bingo", avatarUrl: "https://staticg.sportskeeda.com/editor/2021/12/ed547-16408681947929-1920.jpg")
let testData = [GitHubIssue(title:"Hello World", id: 2345, createdAt: "2021-02-01T02:00:00", body: "With a dog named Lulu by his side, Army Ranger Briggs races down the Pacific Coast to make it to a soldier's funeral on time. Along the way, Briggs and Lulu drive each other completely crazy, break a handful of laws, narrowly evade death, and learn to let down their guards to have a fighting chance of finding happiness.", state: "open", user: bingo)]
