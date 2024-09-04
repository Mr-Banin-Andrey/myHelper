//
//  FoodEaten.swift
//  myHelper
//
//  Created by Андрей Банин on 21.8.24..
//

import Foundation

struct FoodEatenDuringDay: Identifiable {
    let id: String
    let mealTimes: String
    let time: Date
    let dishes: [Dish]
}

struct Dish: Identifiable {
    let id: String
    let name: String
    let calories: Int
    let proteins: Double
    let fats: Double
    let carbohydrates: Double
    let weight: Int
    
    let pills: [Pill]
}

struct Pill {
    let id: String
    let name: String
    var count: Int
}

extension Dish {
    static var mockArray: [Dish] {
        let array: [Dish] = [
            Dish(id: "1", name: "Каша", calories: 230, proteins: 5, fats: 0.1, carbohydrates: 34.5, weight: 150,
                      pills: [Pill(id: "1", name: "креон", count: 2)]),
            
            Dish(id: "2", name: "Спаггети с тофу", calories: 458, proteins: 20.9, fats: 33.5, carbohydrates: 66.1, weight: 300,
                      pills: [Pill(id: "2", name: "креон", count: 2)]),
            
            Dish(id: "3", name: "Бейстроганоф с грибами", calories: 365, proteins: 20.1, fats: 33.5, carbohydrates: 23.1, weight: 147,
                      pills: [Pill(id: "3", name: "креон", count: 2)]),
            
            Dish(id: "4", name: "Чизкейк", calories: 210, proteins: 15.1, fats: 23.5, carbohydrates: 35.1, weight: 89,
                      pills: [Pill(id: "4", name: "креон", count: 2)])
        ]
        return array
    }
}
