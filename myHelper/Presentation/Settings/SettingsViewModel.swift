//
//  SettingsViewModel.swift
//  myHelper
//
//  Created by Андрей Банин on 18.8.24..
//

import SwiftUI
import Combine

final class SettingsViewModel: ObservableObject {
    
    //TODO: добавить реактивщину или обновление из базы, для подсчета кбжу
    @Published var isActiveNutritionalValue: Bool = false
}

