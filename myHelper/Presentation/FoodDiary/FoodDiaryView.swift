//
//  FoodDiaryView.swift
//  myHelper
//
//  Created by Андрей Банин on 18.8.24..
//

import SwiftUI

struct FoodDiaryView: View {
    @StateObject var viewModel: FoodDiaryViewModel
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView(.vertical) {
                    HStack {
                        Text("Сегодня:")
                            .font(.title)
                        
                        Spacer()
                        
                        NavigationLink(destination: AddingFoodView(viewModel: AddingFoodViewModel())
                        ) {
                            Image(systemName: "plus")
                                .foregroundStyle(Color.yellow)
                                .frame(width: 80, height: 44)
                                .background(Color.gray)
                                .cornerRadius(25)
                                .shadow(radius: 2)
                        }
                    }
                    .padding(16)
                    
                    // плитка с приёмом
                    VStack {
                        MealTimeCell(
                            isActiveNutritionalValue: $viewModel.isActiveNutritionalValue, partOfDay: "Завтрак 6:00",
                            dishes: viewModel.mockFoodEatenDuringDay[0].dishes,
                            pills: viewModel.mockFoodEatenDuringDay[0].pills,
                            feeling: viewModel.mockFoodEatenDuringDay[0].feeling)
                        MealTimeCell(
                            isActiveNutritionalValue: $viewModel.isActiveNutritionalValue, partOfDay: "Обед 12:00",
                            dishes: viewModel.mockFoodEatenDuringDay[0].dishes,
                            pills: viewModel.mockFoodEatenDuringDay[0].pills,
                            feeling: viewModel.mockFoodEatenDuringDay[0].feeling)
                        MealTimeCell(
                            isActiveNutritionalValue: $viewModel.isActiveNutritionalValue, partOfDay: "Ужин 19:00",
                            dishes: viewModel.mockFoodEatenDuringDay[0].dishes,
                            pills: viewModel.mockFoodEatenDuringDay[0].pills,
                            feeling: viewModel.mockFoodEatenDuringDay[0].feeling)
                    }
                }
            }
            .navigationTitle("Дневник питания")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing:
                                    NavigationLink(destination:
                                                    DailySummaryView(viewModel: DailySummaryViewModel())) {
                Image(systemName: "calendar")
                    .foregroundColor(Color.black)
            })
        }
    }
}

#Preview {
    FoodDiaryView(viewModel: FoodDiaryViewModel())
}
