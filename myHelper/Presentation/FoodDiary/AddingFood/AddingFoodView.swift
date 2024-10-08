//
//  AddingFoodView.swift
//  myHelper
//
//  Created by Андрей Банин on 6.9.24..
//

import SwiftUI

struct AddingFoodView: View {
    @StateObject var viewModel: AddingFoodViewModel
    
    var body: some View {
        ScrollView(.vertical) {
            if !viewModel.dishes.dishes.isEmpty {
                ZStack {
                    VStack {
                        HStack {
                            Text("Блюда")
                                .foregroundStyle(Color.yellow)
                            
                            Spacer()
                            
                            if viewModel.isActiveNutritionalValue {
                                Text("К/Б/Ж/У  Вес")
                                    .foregroundStyle(Color.yellow)
                            }
                        }
                        .padding(8)
                        .background(Color.gray.opacity(0.7))
                        .clipShape(.capsule(style: .circular))
                        .padding(.horizontal, 16)
                        
                        LazyVStack {
                            ForEach(viewModel.dishes.dishes) { dish in
                                VStack(spacing: 1) {
                                    HStack {
                                        Text(dish.name)
                                        
                                        Spacer()
                                        
                                        if viewModel.isActiveNutritionalValue {
                                            Text("200/23.5/43.4/69 350г")
                                                .lineLimit(1)
                                                .font(.caption)
                                        }
                                    }
                                    
                                    Divider()
                                        .frame(height: 1)
                                        .background(Color(.systemGray))
                                }
                            }
                            .padding(.horizontal, 16)
                        }
                    }
                }
                .padding(.vertical, 16)
                .background(Color(uiColor: UIColor(_colorLiteralRed: 0.0, green: 0.0, blue: 0.5, alpha: 0.1)))
                .cornerRadius(16)
                .padding(1)
            }
            
            VStack {
                HStack(spacing: 5) {
                    CustomTextField(
                        label: "Блюдо",
                        showError: .constant(false),
                        text: $viewModel.dish,
                        showTitleLabel: true)
                    .padding(viewModel.isActiveNutritionalValue ? .leading : .horizontal, 16)
                    
                    if viewModel.isActiveNutritionalValue {
                        CustomTextField(
                            label: "Вес",
                            keyboardType: .decimalPad,
                            showError: .constant(false),
                            text: $viewModel.weight,
                            showTitleLabel: true)
                        .frame(width: 35)
                                                
                        VStack {
                            Spacer()
                            Text("г")
                                .padding(.bottom, 3)
                        }
                        .padding(.trailing, 16)
                    }
                }
                
//                Button(action: {
//                    withAnimation {
//                        viewModel.isShowView.toggle()
//                    }
//                }, label: {
//                    HStack {
//                        Image(systemName: viewModel.isShowView ? "checkmark.circle" : "circle")
//                        
//                        Text("Добавить вес блюда и КБЖУ")
//                            .font(.caption)
//                        Spacer()
//                    }
//                    .foregroundStyle(Color(.systemGray))
//                    .padding(.horizontal, 16)
//                    .padding(.top, 8)
//                    .padding(.bottom, 16)
//                })

                if viewModel.isActiveNutritionalValue {
                    HStack(spacing: 5) {
                        CPFCCell(label: .constant("Калории"), text: $viewModel.calories, placeholder: "0", unitOfMeasurement: "")
                        CPFCCell(label: .constant("Белки"), text: $viewModel.proteins, placeholder: "0", unitOfMeasurement: "г")
                        CPFCCell(label: .constant("Жиры"), text: $viewModel.fats, placeholder: "0", unitOfMeasurement: "г")
                        CPFCCell(label: .constant("Углеводы"), text: $viewModel.carbohydrates, placeholder: "0", unitOfMeasurement: "г")
                    }
                    .padding(.horizontal, 8)
                }
                if !viewModel.dish.isEmpty {
                    Button {
                        print("fork.knife")
                    } label: {
                        Text("Добавить блюдо")
                            .foregroundStyle(Color.yellow)
                            .padding(15)
                            .background(Color.gray)
                            .cornerRadius(25)
                    }
                }
            }
            .padding(.vertical, 16)
            .background(Color(uiColor: UIColor(_colorLiteralRed: 0.5, green: 0.5, blue: 0.0, alpha: 0.1)))
            .cornerRadius(16)
            .padding(1)
            
            NavigationLink(destination: DailySummaryView(viewModel: DailySummaryViewModel())) {
                Text("Сохранить")
                    .foregroundStyle(Color.yellow)
                    .padding(15)
                    .background(Color.black)
                    .cornerRadius(25)
            }
        }
        .padding(.vertical, 16)
        .navigationTitle("Добавить прием пищи")
        .navigationBarBackButtonTitleHidden()
    }
}

#Preview {
    AddingFoodView(viewModel: AddingFoodViewModel())
}
