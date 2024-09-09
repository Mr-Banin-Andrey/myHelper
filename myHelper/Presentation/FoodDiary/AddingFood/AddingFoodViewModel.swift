//
//  AddingFoodViewModel.swift
//  myHelper
//
//  Created by Андрей Банин on 6.9.24..
//

import SwiftUI

final class AddingFoodViewModel: ObservableObject {
    
    @Published var dish: String = ""
    @Published var weight: String = ""
    
    @Published var dishes: FoodEatenDuringDay = .mockFood
    
    @Published var isShowView: Bool = true
    @Published var showBottomSheet: Bool = false
    
    @Published var isShowCaloriesView: Bool = false
    @Published var calories: Int = 100
}
