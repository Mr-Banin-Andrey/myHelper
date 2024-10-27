//
//  AddingFoodViewModel.swift
//  myHelper
//
//  Created by Андрей Банин on 6.9.24..
//

import SwiftUI

final class AddingFoodViewModel: ObservableObject {
    
    //TODO: написать метод сохранения данных
    /// на старте сохранять здесь метод сохранения в реалм
    /// далее сохранения в файрбейз
    @Published var dishes = FoodEatenDuringDay(
        id: UUID().uuidString,
        time: Date(),
        dishes: [],
        pills: [],
        feeling: FeelingAfterEating(id: UUID().uuidString, name: "")
    )
    
    @Published var dish: String = ""
    
    @Published var weight: String = ""
    @Published var calories: String = ""
    @Published var proteins: String = ""
    @Published var fats: String = ""
    @Published var carbohydrates: String = ""
    
    @Published var isActiveNutritionalValue: Bool = false
    
    //MARK: Methods
    
    func addDish() {
        dishes.dishes.append(
            Dish(
                id: UUID().uuidString,
                name: dish,
                calories: 0,
                proteins: 0,
                fats: 0,
                carbohydrates: 0,
                weight: 0))
        dish = ""
    }
    
    
//    static var mockFood: FoodEatenDuringDay {
//        let food: FoodEatenDuringDay = FoodEatenDuringDay(
//            id: UUID().uuidString,
//            time: Date(),
//            dishes: [Dish(id: "1", name: "Каша", calories: 230, proteins: 5, fats: 0.1, carbohydrates: 34.5, weight: 150),
//                     Dish(id: "2", name: "Спаггети с тофу", calories: 458, proteins: 20.9, fats: 33.5, carbohydrates: 66.1, weight: 300),
//                     Dish(id: "3", name: "Бейстроганоф с грибами", calories: 365, proteins: 20.1, fats: 33.5, carbohydrates: 23.1, weight: 147),
//                     Dish(id: "4", name: "Чизкейк", calories: 210, proteins: 15.1, fats: 23.5, carbohydrates: 35.1, weight: 89)],
//            pills: [],
//            feeling: FeelingAfterEating(id: UUID().uuidString, name: "всё хорошо, ничего не болит")
//        )
//        return food
//    }
//    private var qqd = dishes.dishes[0].fats.rounded()
}
