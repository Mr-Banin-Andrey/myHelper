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
    
    @Published var calories: String = ""
    @Published var proteins: String = ""
    @Published var fats: String = ""
    @Published var carbohydrates: String = ""
    
    
    @Published var isShowView: Bool = false
    
}
