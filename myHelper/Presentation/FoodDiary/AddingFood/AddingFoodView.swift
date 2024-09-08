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
                .padding(.vertical, 24)
                .background(Color.teal)
            }
            
            
            VStack {
                CustomTextField(
                    label: "Блюдо",
                    showError: .constant(false),
                    text: $viewModel.dish,
                    showTitleLabel: true)
                
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
                })

                //на переделать на ролик пикер

                if viewModel.isShowView {
                    HStack {
                        Text("203 г.")
                            .foregroundStyle(Color.yellow)
                            .padding(15)
                            .background(Color.gray)
                            .cornerRadius(25)

                        Text("230 ккал")
                            .foregroundStyle(Color.yellow)
                            .padding(15)
                            .background(Color.gray)
                            .cornerRadius(25)

                        Text("25 белков")
                            .foregroundStyle(Color.yellow)
                            .padding(15)
                            .background(Color.gray)
                            .cornerRadius(25)
                    }

                    HStack {
                        Text("Вес")
                            .foregroundStyle(Color.yellow)
                            .padding(15)
                            .background(Color.gray)
                            .cornerRadius(25)

                        Text("Каллории")
                            .foregroundStyle(Color.yellow)
                            .padding(15)
                            .background(Color.gray)
                            .cornerRadius(25)
                    }
                    
                    HStack {
                        Text("Белки")
                            .foregroundStyle(Color.yellow)
                            .padding(15)
                            .background(Color.gray)
                            .cornerRadius(25)

                        Text("Жиры")
                            .foregroundStyle(Color.yellow)
                            .padding(15)
                            .background(Color.gray)
                            .cornerRadius(25)

                        Text("Углеводы")
                            .foregroundStyle(Color.yellow)
                            .padding(15)
                            .background(Color.gray)
                            .cornerRadius(25)
                    }
                }
//                .sheet(isPresented: $viewModel.showBottomSheet) {
//                    if let task = viewModel.selectedTask {
//                        if #available(iOS 16.0, *) {
//                            TaskInfoSheetView(sheetHeight: $viewModel.sheetHeight, task: task)
//                                .presentationDetents([.height(viewModel.sheetHeight)])
//                        } else {
//                            TaskInfoSheetView(sheetHeight: $viewModel.sheetHeight, task: task)
//                        }
//                    } else {
//                        Text("No task selected")
//                    }
//                }
                
                
                NavigationLink(destination: DailySummaryView(viewModel: DailySummaryViewModel())) {
                    Text("Добавить")
                        .foregroundStyle(Color.yellow)
                        .padding(15)
                        .background(Color.gray)
                        .cornerRadius(25)
                }
            }
//            .background(Color.orange)
            .padding(.vertical, 16)
        }
        .navigationTitle("Добавить прием пищи")
        .navigationBarBackButtonTitleHidden()
    }
}

#Preview {
    AddingFoodView(viewModel: AddingFoodViewModel())
}

//if isOpen {
//    ScrollView {
//        LazyVGrid(columns: columns, alignment: .center, spacing: 10) {
//            ForEach(closedCards) { card in
//                PlayerCardView(
//                    isBigSizeCard: false,
//                    isNewCard: false,
//                    isClosedCard: openedCards[card.id] ?? false,
//                    card: card,
//                    cardImage: images[card.id] ?? UIImage.profilePlaceholderImage,
//                    countCards: "\(cardCount[card.id] ?? 0)"
//                ) { card in
//                    onCardTap(card)
//                }
//            }
//        }
//    }
//}
