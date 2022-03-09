//
//  PlansManager.swift
//  My Chef-SwiftUI
//
//  Created by Zach Huang on 2022/3/9.
//

import Foundation

class PlansManager: ObservableObject {
  @Published var plans = [[Recipe]]()

  func addMeal(day: String, meal: String, recipe: Recipe) {
      let dayDict:[String: Int] = ["Mon":0, "Tues":1, "Wed":2, "Thurs":3, "Fri":4, "Sat":5, "Sun":6]
      let mealDict:[String: Int] = ["Breakfast":0 , "Lunch":1 , "Snack": 2, "Dinner": 3]
      
      // update plans
      self.plans[dayDict[day]!][mealDict[meal]!] = recipe
      
      print(self.plans)
  }
}
