//
//  AddingFoodViewModel.swift
//  myHelper
//
//  Created by Андрей Банин on 6.9.24..
//

import SwiftUI

final class AddingFoodViewModel: ObservableObject {
    
    @Published var dish: String = ""
    @Published var dishes: FoodEatenDuringDay = .mockFood
    
    @Published var isShowView: Bool = false
}
