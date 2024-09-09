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
                            
                            Text("К/Б/Ж/У  Вес")
                                .foregroundStyle(Color.yellow)
                        }
                        .padding(8)
                        .background(Color.gray)
                        .clipShape(.capsule(style: .circular))
                        .padding(.horizontal, 16)
                        
                        LazyVStack {
                            ForEach(viewModel.dishes.dishes) { dish in
                                VStack(spacing: 1) {
                                    HStack {
                                        Text(dish.name)
                                        
                                        Spacer()
                                        
                                        Text("200/23.5/43.4/69 350г")
                                            .lineLimit(1)
                                            .font(.caption)
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
                    .padding(viewModel.isShowView ? .leading : .horizontal, 16)
                    
                    if viewModel.isShowView {
                        CustomTextField(
                            label: "Вес",
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
                
                Button(action: {
                    withAnimation {
                        viewModel.isShowView.toggle()
                    }
                }, label: {
                    HStack {
                        Image(systemName: viewModel.isShowView ? "checkmark.circle" : "circle")
                        
                        Text("Добавить вес блюда и КБЖУ")
                            .font(.caption)
                        Spacer()
                    }
                    .foregroundStyle(Color(.systemGray))
                    .padding(.horizontal, 16)
                    .padding(.top, 8)
                    .padding(.bottom, 16)
                })

                //на переделать на ролик пикер

                if viewModel.isShowView {
                    HStack(spacing: 5) {
                        
                        VStack {
                            Text(viewModel.isShowCaloriesView ? "\(viewModel.calories) г": "Каллории")
                                .foregroundStyle(Color.yellow)
                            if viewModel.isShowCaloriesView {
                                Text("ккал")
                                    .foregroundStyle(Color.yellow)
                                    .font(.caption)
                            }
                        }
                        .padding(.vertical, viewModel.isShowCaloriesView ? 5 : 10)
                        .padding(.horizontal, viewModel.isShowCaloriesView ? 15 : 10)
                        .background(Color.gray)
                        .clipShape(.capsule)
                        .onTapGesture {
                            viewModel.showBottomSheet = true
                        }
                        .sheet(isPresented: $viewModel.showBottomSheet) {
                                CustomPicker(title: "Каллории", number: viewModel.calories) { calories in
                                    withAnimation {
                                        viewModel.calories = calories
                                        viewModel.isShowCaloriesView = true
                                    }
                                }
                                .presentationDetents([.height(300)])
                                .presentationDragIndicator(.visible)
                        }

                        
                        ///////////////////////////                        ///////////////////////////                        ///////////////////////////

                        Text("Белки")
                            .foregroundStyle(Color.yellow)
                            .padding(10)
                            .background(Color.gray)
                            .cornerRadius(25)

                        Text("Жиры")
                            .foregroundStyle(Color.yellow)
                            .padding(10)
                            .background(Color.gray)
                            .cornerRadius(25)

                        Text("Углеводы")
                            .foregroundStyle(Color.yellow)
                            .padding(10)
                            .background(Color.gray)
                            .cornerRadius(25)
                    }
                    
//                    HStack(spacing: 5) {
//                        VStack {
//                            Text("289 г")
//                                .foregroundStyle(Color.yellow)
//                            
//                            Text("ккал")
//                                .foregroundStyle(Color.yellow)
//                                .font(.caption)
//                        }
//                        .padding(.vertical, 5)
//                        .padding(.horizontal, 15)
//                        .background(Color.gray)
//                        .clipShape(.capsule(style: .circular))
//                        
//                        VStack {
//                            Text("25,0 г")
//                                .foregroundStyle(Color.yellow)
//                            
//                            Text("белков")
//                                .foregroundStyle(Color.yellow)
//                                .font(.caption)
//                        }
//                        .padding(.vertical, 5)
//                        .padding(.horizontal, 15)
//                        .background(Color.gray)
//                        .clipShape(.capsule(style: .circular))
//                        
//                        VStack {
//                            Text("14,6 г")
//                                .foregroundStyle(Color.yellow)
//                            
//                            Text("жиры")
//                                .foregroundStyle(Color.yellow)
//                                .font(.caption)
//                        }
//                        .padding(.vertical, 5)
//                        .padding(.horizontal, 15)
//                        .background(Color.gray)
//                        .clipShape(.capsule(style: .circular))
//                        
//                        VStack {
//                            Text("68,3 г")
//                                .foregroundStyle(Color.yellow)
//                            
//                            Text("углеводы")
//                                .foregroundStyle(Color.yellow)
//                                .font(.caption)
//                        }
//                        .padding(.vertical, 5)
//                        .padding(.horizontal, 15)
//                        .background(Color.gray)
//                        .clipShape(.capsule(style: .circular))
//                        
//                    }
                }
                
                NavigationLink(destination: DailySummaryView(viewModel: DailySummaryViewModel())) {
                    Text("Добавить")
                        .foregroundStyle(Color.yellow)
                        .padding(15)
                        .background(Color.black)
                        .cornerRadius(25)
                }
            }
            .padding(.vertical, 16)
            .background(Color(uiColor: UIColor(_colorLiteralRed: 0.5, green: 0.5, blue: 0.0, alpha: 0.1)))
            .cornerRadius(16)
            .padding(1)
            
        }
        .navigationTitle("Добавить прием пищи")
        .navigationBarBackButtonTitleHidden()
    }
}

#Preview {
    AddingFoodView(viewModel: AddingFoodViewModel())
}
