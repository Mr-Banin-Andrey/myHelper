//
//  AddingFoodView.swift
//  myHelper
//
//  Created by Андрей Банин on 6.9.24..
//

import SwiftUI

struct AddingFoodView: View {
    @Environment(\.dismiss) var dismiss
    @StateObject var viewModel: AddingFoodViewModel
    
    @State private var showTabBar = false
    
    var body: some View {
        ScrollView(.vertical) {
            if !viewModel.dishes.dishes.isEmpty {
                ZStack {
                    VStack {
                        HStack {
                            Text("Блюда")
                                .font(.title3)
                            
                            Spacer()
                            
                            if viewModel.isActiveNutritionalValue {
                                Text("К/Б/Ж/У  Вес")
                            }
                        }
                        .padding(.vertical, 5)
                        .padding(.horizontal, 8)
                        .background(Color.white)
                        .cornerRadius(12)
                        .padding(.top, 4)
                        .padding(.horizontal, 8)
                        .padding(.bottom, 8)
                        
                        LazyVStack {
                            ForEach(viewModel.dishes.dishes) { dish in
                                VStack(spacing: 1) {
                                    HStack {
                                        Text(dish.name)
                                        
                                        Spacer()
                                        
                                        if viewModel.isActiveNutritionalValue {
                                            Text("\(dish.calories)/\(dish.proteins.rounded())/\(dish.fats)/\(dish.carbohydrates) \(dish.weight)г")
                                                .lineLimit(1)
                                                .font(.caption)
                                            //                                            Text("200/23.5/43.4/69 350г")
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
                .padding(.vertical, 8)
                .background(Color(uiColor: UIColor(_colorLiteralRed: 0.0, green: 0.0, blue: 0.7, alpha: 0.3)))
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
                //TODO: вынести в отдельный файл
                //                Button(action: {
                //                    withAnimation {
                //                        viewModel.isActiveNutritionalValue.toggle()
                //                    }
                //                }, label: {
                //                    HStack {
                //                        Image(systemName: viewModel.isActiveNutritionalValue ? "checkmark.circle" : "circle")
                //
                //                        Text("Добавить вес блюда и КБЖУ")
                //                            .font(.caption)
                //                        Spacer()
                //                    }
                //                    .foregroundStyle(Color(.systemGray))
                //                    .padding(.horizontal, 16)
                //                    .padding(.vertical, 16)
                //                })
                //
                //                if viewModel.isActiveNutritionalValue {
                //                    HStack(spacing: 5) {
                //                        CPFCCell(label: .constant("Калории"), text: $viewModel.calories, placeholder: "0", unitOfMeasurement: "")
                //                    }
                //                    .padding(.horizontal, 8)
                //
                //                    HStack(spacing: 5) {
                //                        CPFCCell(label: .constant("Белки"), text: $viewModel.proteins, placeholder: "0", unitOfMeasurement: "г")
                //                        CPFCCell(label: .constant("Жиры"), text: $viewModel.fats, placeholder: "0", unitOfMeasurement: "г")
                //                        CPFCCell(label: .constant("Углеводы"), text: $viewModel.carbohydrates, placeholder: "0", unitOfMeasurement: "г")
                //                    }
                //                    .padding(.horizontal, 8)
                //                }
                //                if !viewModel.dish.isEmpty {
                //                    Button {
                //                        print("fork.knife")
                //                    } label: {
                //                        Text("Добавить блюдо")
                //                            .foregroundStyle(Color.yellow)
                //                            .padding(15)
                //                            .background(Color.gray)
                //                            .cornerRadius(25)
                //                    }
                //                }
            }
            .padding(.vertical, 20)
            .background(Color(uiColor: UIColor(_colorLiteralRed: 0.5, green: 0.5, blue: 0.0, alpha: 0.3)))
            .cornerRadius(16)
            .padding(1)
            
            Button {
                withAnimation {
                    viewModel.addDish()
                }
            } label: {
                Text("Добавить")
                    .foregroundStyle(Color.yellow.opacity(viewModel.dish.count == 0 ? 0.5 : 1))
                    .padding(15)
                    .background(Color.black.opacity(viewModel.dish.count == 0 ? 0.5 : 1))
                    .cornerRadius(25)
            }
            .disabled(viewModel.dish.count == 0)
        }
        .navigationTitle("Добавить прием пищи")
        .navigationBarTitleDisplayMode(.inline)
        
        .navigationBarBackButtonTitleHidden(action: {
            print("✅")
        })
    }
}

#Preview {
    AddingFoodView(viewModel: AddingFoodViewModel())
}
