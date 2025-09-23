//
//  DataModels.swift
//  MealTracker
//
//  Created by Driksha Thakur on 18/08/25.
//

import Foundation

struct Food {
    var name: String
    var description: String
}

struct Meal {
    var name: String
    var food: [Food]
}
