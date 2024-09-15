//
//  MealTimeCell.swift
//  myHelper
//
//  Created by Андрей Банин on 21.8.24..
//

import SwiftUI

struct MealTimeCell: View {
    
    @Binding var isActiveNutritionalValue: Bool
    let partOfDay: String
    let dishes: [Dish]
    let pills: [Pill]
    let feeling: FeelingAfterEating
    
    var body: some View {
        VStack {
//            HStack {
//                ZStack {
//                    Text(partOfDay)
//                        .padding(8)
//                        .padding(.bottom, 20)
//                }
//                .background(Color(uiColor: UIColor.systemBlue))
//                .cornerRadius(15)
//                .shadow(radius: 1)
//                .padding(.bottom, -20)
//                
//                Spacer()
//            }
//            .padding(.horizontal, 30)
            
            ZStack {
                VStack {
                    HStack {
                        Text(partOfDay)
                            .font(.title3)

                        Spacer()
                        
                        if isActiveNutritionalValue {
                            HStack {
                                VStack {
                                    Text("К")
                                        .fontWeight(.light)
                                        .font(.system(size: 12))
                                    
                                    Text("280")
                                        .fontWeight(.light)
                                        .font(.system(size: 12))
                                }
                                
                                VStack {
                                    Text("Б")
                                        .fontWeight(.light)
                                        .font(.system(size: 12))
                                    
                                    Text("2.8")
                                        .fontWeight(.light)
                                        .font(.system(size: 12))
                                }
                                
                                VStack {
                                    Text("Ж")
                                        .fontWeight(.light)
                                        .font(.system(size: 12))
                                    
                                    Text("7.8")
                                        .fontWeight(.light)
                                        .font(.system(size: 12))
                                }
                                
                                VStack {
                                    Text("У")
                                        .fontWeight(.light)
                                        .font(.system(size: 12))
                                    
                                    Text("57.8")
                                        .fontWeight(.light)
                                        .font(.system(size: 12))
                                }
                            }
                        }
                    }
                    .padding(.vertical, 5)
                    .padding(.horizontal, 8)
                    .background(Color(uiColor: UIColor(_colorLiteralRed: 0.4, green: 0.0, blue: 0.1, alpha: 0.4)))
                    .cornerRadius(12)
                    .padding(.top, 5)
                    .padding(.horizontal, 10)
                    
                    ForEach(dishes) { food in
                        HStack {
                            Text(food.name)
                                .font(.body)
                                
                            Spacer()
                            
                            if isActiveNutritionalValue {
                                Text("\(food.weight.description) грамм")
                                .font(.caption)
                            }
                        }
                        .padding(.horizontal, 5)
                        .padding(.top, 4)
                        
                        
                        if dishes.last?.id != food.id {
                            Divider()
                                .frame(height: 0.5)
                                .background(Color(.systemGray))
                        }
                    }
                    .padding(.horizontal, 10)
                    
                    Divider()
                        .frame(height: 1)
                        .background(Color(.systemGray))
                    
                    HStack {
                        Text("Таблетки:")
                            .bold()
                            .lineLimit(1)
                        
                        Spacer()
                    }
                    .padding(2)
                    .padding(.horizontal, 10)
                    
                    HStack {
                        Spacer()
                        ForEach(pills) { pill in
                            Text(pill.name)
                                .font(.body)
                        }
                    }
                    .padding(.horizontal, 10)
                    
                    Divider()
                        .frame(height: 1)
                        .background(Color(.systemGray))
                    
                    HStack {
                        Text("Ощущения после еды:")
                            .bold()
                            .lineLimit(1)
                        
                        Spacer()
                    }
                    .padding(2)
                    .padding(.horizontal, 8)
                    
                    HStack {
                        Spacer()
                        Text(feeling.name)
                            .font(.body)
                    }
                    .padding(.horizontal, 10)
                }
                .padding(.bottom, 10)
                
            }
            .background(Color(uiColor: UIColor(_colorLiteralRed: 0.5, green: 0.5, blue: 0.0, alpha: 0.1)))
            .cornerRadius(15)
            .padding(.horizontal, 8)
        }
    }
}

#Preview {
    MealTimeCell(isActiveNutritionalValue: .constant(false), partOfDay: "Dinner",
                 dishes: FoodEatenDuringDay.mockArray[0].dishes,
                 pills: FoodEatenDuringDay.mockArray[0].pills, 
                 feeling: FoodEatenDuringDay.mockArray[0].feeling)
}
