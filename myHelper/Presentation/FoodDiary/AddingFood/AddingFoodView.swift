//
//  AddingFoodView.swift
//  myHelper
//
//  Created by Андрей Банин on 6.9.24..
//

import SwiftUI

struct AddingFoodView: View {
    @StateObject var viewModel: AddingFoodViewModel
    
//    private let columns = [
//        GridItem(.fixed(78)),
//        GridItem(.fixed(78)),
//        GridItem(.fixed(78)),
//        GridItem(.fixed(78))
//    ]
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVStack {
                ForEach(viewModel.dishes.dishes) { dish in
                    ZStack {
                        HStack {
                            Text(dish.name)
                            
                            Spacer()

                        }
                        
                    }
                    .padding(5)
                    .background(Color.yellow)
                    .cornerRadius(12)
                    
                }
                .padding(.horizontal, 16)
            }
            
            VStack {
                CustomTextField(
                    label: "Блюдо",
                    showError: .constant(false),
                    text: $viewModel.dish,
                    showTitleLabel: true)
                
                //на переделать на ролик пикер
                CustomTextField(
                    label: "ККАЛ",
                    showError: .constant(false),
                    text: $viewModel.dish,
                    showTitleLabel: true)
                
                CustomTextField(
                    label: "Белки",
                    showError: .constant(false),
                    text: $viewModel.dish,
                    showTitleLabel: true)
                
                CustomTextField(
                    label: "Жиры",
                    showError: .constant(false),
                    text: $viewModel.dish,
                    showTitleLabel: true)
                
                CustomTextField(
                    label: "Углеводы",
                    showError: .constant(false),
                    text: $viewModel.dish,
                    showTitleLabel: true)
                
                NavigationLink(destination: DailySummaryView(viewModel: DailySummaryViewModel())) {
                    Text("Добавить")
                        .foregroundStyle(Color.yellow)
                        .padding(15)
                        .background(Color.gray)
                        .cornerRadius(25)
                }
            }
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
