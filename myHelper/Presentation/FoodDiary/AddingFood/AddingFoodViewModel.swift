//
//  AddingFoodViewModel.swift
//  myHelper
//
//  Created by Андрей Банин on 6.9.24..
//

import SwiftUI

final class AddingFoodViewModel: ObservableObject {
    
    @Published var dishes: FoodEatenDuringDay = .mockFood
    
    @Published var dish: String = ""
    @Published var weight: String = ""
    
    @Published var calories: Int = 100
    @Published var proteins: Int = 0
    @Published var fats: Int  = 0
    @Published var carbohydrates: Int  = 0
    
    
    @Published var isShowView: Bool = false
    
}
