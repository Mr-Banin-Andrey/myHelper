//
//  FoodEaten.swift
//  myHelper
//
//  Created by Андрей Банин on 21.8.24..
//

import Foundation
import RealmSwift

//один прием пищи (завтрак/обед/ужин)
class FoodEatenDuringDay: Object, Identifiable {
    @Persisted(primaryKey: true) var _id: ObjectId
//    let id: String
    @Persisted var time: Date
    @Persisted var dishes: List<Dish>
    
//    @Persisted var pills: [Pill] = []
//    let feeling: FeelingAfterEating
}

//съеденнное блюдо
class Dish: Object, Identifiable {
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var name: String
    
    @Persisted var calories: Int
    @Persisted var proteins: Double
    @Persisted var fats: Double
    @Persisted var carbohydrates: Double
    @Persisted var weight: Int
}

struct Pill: Identifiable {
    let id: String
    let name: String
}

struct FeelingAfterEating: Identifiable {
    let id: String
    let name: String
}

//extension FoodEatenDuringDay {
//    static var mockArray: [FoodEatenDuringDay] {
//        let dishes: [Dish] = [
//            Dish(id: "1", name: "Каша", calories: 230, proteins: 5, fats: 0.1, carbohydrates: 34.5, weight: 150),
//            Dish(id: "2", name: "Спаггети с тофу", calories: 458, proteins: 20.9, fats: 33.5, carbohydrates: 66.1, weight: 300),
//            Dish(id: "3", name: "Бейстроганоф с грибами", calories: 365, proteins: 20.1, fats: 33.5, carbohydrates: 23.1, weight: 147),
//            Dish(id: "4", name: "Чизкейк", calories: 210, proteins: 15.1, fats: 23.5, carbohydrates: 35.1, weight: 89)
//        ]
//        
//        let array: [FoodEatenDuringDay] = [
//            // сегодняшний день
//            FoodEatenDuringDay(id: UUID().uuidString, time: Date(), dishes: dishes, pills: [
//                Pill(id: "10", name: "омез"),
//                Pill(id: "20", name: "бифиформ"),
//                Pill(id: "30", name: "магнерот"),
//                Pill(id: "303", name: "креон")],
//                               feeling: FeelingAfterEating(id: UUID().uuidString, name: "всё хорошо")),
//            FoodEatenDuringDay(id: UUID().uuidString, time: Date(), dishes: dishes, pills: [Pill(id: "2", name: "креон")], feeling: FeelingAfterEating(id: UUID().uuidString, name: "всё хорошо")),
//            FoodEatenDuringDay(id: UUID().uuidString, time: Date(), dishes: dishes, pills: [Pill(id: "3", name: "креон")], feeling: FeelingAfterEating(id: UUID().uuidString, name: "всё хорошо")),
//            FoodEatenDuringDay(id: UUID().uuidString, time: Date(), dishes: dishes, pills: [Pill(id: "4", name: "креон")], feeling: FeelingAfterEating(id: UUID().uuidString, name: "всё хорошо")),
//            
//            // предыдущий день
//            FoodEatenDuringDay(id: UUID().uuidString, time: Date(), dishes: dishes, pills: [Pill(id: "1", name: "креон")], feeling: FeelingAfterEating(id: UUID().uuidString, name: "всё хорошо")),
//            FoodEatenDuringDay(id: UUID().uuidString, time: Date(), dishes: dishes, pills: [Pill(id: "2", name: "креон")], feeling: FeelingAfterEating(id: UUID().uuidString, name: "всё хорошо ")),
//            FoodEatenDuringDay(id: UUID().uuidString, time: Date(), dishes: dishes, pills: [Pill(id: "3", name: "креон")], feeling: FeelingAfterEating(id: UUID().uuidString, name: "всё хорошо ")),
//        ]
//        return array
//    }
//    
//    static var mockFood: FoodEatenDuringDay {
//        let food: FoodEatenDuringDay = FoodEatenDuringDay(
//            id: UUID().uuidString,
//            time: Date(),
//            dishes: [Dish(id: "1", name: "Каша", calories: 230, proteins: 5, fats: 0.1, carbohydrates: 34.5, weight: 150),
//                     Dish(id: "2", name: "Спаггети с тофу", calories: 458, proteins: 20.9, fats: 33.5, carbohydrates: 66.1, weight: 300),
//                     Dish(id: "3", name: "Бейстроганоф с грибами", calories: 365, proteins: 20.1, fats: 33.5, carbohydrates: 23.1, weight: 147),
//                     Dish(id: "4", name: "Чизкейк", calories: 210, proteins: 15.1, fats: 23.5, carbohydrates: 35.1, weight: 89)],
//            pills: [],
//            feeling: FeelingAfterEating(id: UUID().uuidString, name: "всё хорошо ")
//        )
//        return food
//    }
//}
