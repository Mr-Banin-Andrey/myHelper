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
        NavigationStack {
            ZStack {
                ScrollView(.vertical) {
                    HStack {
                        Text("Сегодня:")
                            .font(.title)
                        
                        Spacer()
                        
                        Button {
                            print("fork.knife")
                        } label: {
                            Image(systemName: "plus")
                                .foregroundStyle(Color.black)
                        }
                        .frame(width: 80, height: 44)
                        .background(Color.gray)
                        .cornerRadius(25)
                        .shadow(radius: 2)
                    }
                    .padding(16)
                    
                    // плитка с приёмом
                    
                    MealTimeCell(partOfDay: "Утро", array: viewModel.mockArray)
                    MealTimeCell(partOfDay: "День", array: viewModel.mockArray)
                    MealTimeCell(partOfDay: "Вечер", array: viewModel.mockArray)
                   
                    // кнопки
                    HStack {
                        Button {
                            print("fork.knife")
                        } label: {
                            Image(systemName: "plus")
                                .foregroundStyle(Color.black)
                            Image(systemName: "fork.knife")
                                .foregroundStyle(Color.black)
                        }
                        .frame(width: 100, height: 52)
                        .background(Color.gray)
                        .cornerRadius(25)
                        .shadow(radius: 2)
                        
                        Button {
                            print("pills.fill")
                        } label: {
                            Image(systemName: "pills.fill")
                                .foregroundStyle(Color.black)
                        }
                        .frame(width: 100, height: 52)
                        .background(Color.gray)
                        .cornerRadius(25)
                        .shadow(radius: 2)
                        
                        Button {
                            print("figure.mind.and.body")
                        } label: {
                            Image(systemName: "figure.mind.and.body")
                                .foregroundStyle(Color.black)
                        }
                        .frame(width: 100, height: 52)
                        .background(Color.gray)
                        .cornerRadius(25)
                        .shadow(radius: 2)
                    }
                    .padding(.horizontal, 16)

                    
                    HStack {
                        Button {
                            print("toilet.fill")
                        } label: {
                            Image(systemName: "toilet.fill")
                                .foregroundStyle(Color.black)
                        }
                        .frame(width: 100, height: 52)
                        .background(Color.gray)
                        .cornerRadius(25)
                        .padding(.horizontal, 16)
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
