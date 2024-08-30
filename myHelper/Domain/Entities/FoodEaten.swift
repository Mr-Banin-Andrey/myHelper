//
//  FoodEaten.swift
//  myHelper
//
//  Created by Андрей Банин on 21.8.24..
//

import Foundation

struct FoodEaten: Identifiable {
    let id: Int
    let name: String
    let calories: Int
    let proteins: Double
    let fats: Double
    let carbohydrates: Double
    let weight: Int
    
    let pills: [Pill]
}

struct Pill {
    let name: String
    var count: Int
}

extension FoodEaten {
    static var mockArray: [FoodEaten] {
        let array: [FoodEaten] = [
            FoodEaten(id: 1, name: "Каша", calories: 230, proteins: 5, fats: 0.1, carbohydrates: 34.5, weight: 150,
                      pills: [Pill(name: "креон", count: 2)]),
            FoodEaten(id: 2, name: "Спаггети с тофу", calories: 458, proteins: 20.9, fats: 33.5, carbohydrates: 66.1, weight: 300,
                      pills: [Pill(name: "креон", count: 2)]),
            FoodEaten(id: 3, name: "Бейстроганоф с грибами", calories: 365, proteins: 20.1, fats: 33.5, carbohydrates: 23.1, weight: 147,
                      pills: [Pill(name: "креон", count: 2)]),
            FoodEaten(id: 4, name: "Чизкейк", calories: 210, proteins: 15.1, fats: 23.5, carbohydrates: 35.1, weight: 89,
                      pills: [Pill(name: "креон", count: 2)])
        ]
        return array
    }
}
