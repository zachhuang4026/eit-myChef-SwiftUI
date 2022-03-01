//
//  My_Chef_SwiftUIApp.swift
//  My Chef-SwiftUI
//
//  Created by Zach Huang on 2022/3/1.
//

import SwiftUI
import Firebase

@main
struct My_Chef_SwiftUIApp: App {
    init() {
            FirebaseApp.configure()
        }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
