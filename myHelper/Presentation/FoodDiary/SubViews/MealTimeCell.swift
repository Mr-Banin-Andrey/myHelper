//
//  MealTimeCell.swift
//  myHelper
//
//  Created by Андрей Банин on 21.8.24..
//

import SwiftUI

struct MealTimeCell: View {
    
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

                        Spacer()
                        
                        ZStack {
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
                    .padding(5)
                    .background(Color.pink)
                    .cornerRadius(12)
                    .padding(.top, 5)
                    
                    ForEach(dishes) { food in
                        HStack {
                            Text(food.name)
                                .fontWeight(.light)
                                .font(.system(size: 13))
                                
                            Spacer()
                            
                            Text("\(food.weight.description) грамм")
                                .fontWeight(.light)
                                .font(.system(size: 12))
                                
                        }
                        .padding(.horizontal, 5)
                        
                        Divider()
                            .frame(height: 0.5)
                            .background(Color(.systemGray))
                    }
                    
                    HStack {
                        Text("Таблетки:")
                        
                        Spacer()
                            ForEach(pills) { pill in
                                Text(pill.name)
                                    .fontWeight(.light)
                                    .font(.system(size: 13))
                                    
                            }
                    }
                    .padding(2)
                    
                    Divider()
                        .frame(height: 0.5)
                        .background(Color(.systemGray))
                    
                    HStack {
                        Text("Ощущения после еды:")
                            .lineLimit(1)
                        
                        Spacer()
                    }
                    .padding(2)
                    
                    HStack {
                        Spacer()
                        Text(feeling.name)
                            .fontWeight(.light)
                            .font(.system(size: 13))
                    }
                }
                .padding(.horizontal, 10)
                .padding(.bottom, 10)
                
            }
            .background(Color(uiColor: UIColor.systemMint))
            .cornerRadius(15)
            .shadow(radius: 2)
            .padding(.horizontal, 16)
        }
    }
}

#Preview {
    MealTimeCell(partOfDay: "Dinner",
                 dishes: FoodEatenDuringDay.mockArray[0].dishes,
                 pills: FoodEatenDuringDay.mockArray[0].pills, 
                 feeling: FoodEatenDuringDay.mockArray[0].feeling)
}
