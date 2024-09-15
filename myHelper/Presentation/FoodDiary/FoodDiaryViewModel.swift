//
//  FoodDiaryViewModel.swift
//  myHelper
//
//  Created by Андрей Банин on 18.8.24..
//

import SwiftUI

final class FoodDiaryViewModel: ObservableObject {
    
    @Published var isActiveNutritionalValue: Bool = false
    
    let mockFoodEatenDuringDay = FoodEatenDuringDay.mockArray
    
    init() {

    }
}
