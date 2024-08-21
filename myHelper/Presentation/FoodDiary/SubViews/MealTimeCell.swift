//
//  MealTimeCell.swift
//  myHelper
//
//  Created by Андрей Банин on 21.8.24..
//

import SwiftUI

struct MealTimeCell: View {
    
    let partOfDay: String
    let array: [FoodEaten]
    
    var body: some View {
        HStack {
            ZStack {
                Text(partOfDay)
                    .padding(8)
                    .padding(.bottom, 20)
            }
            .background(Color(uiColor: UIColor.systemBlue))
            .cornerRadius(15)
            .shadow(radius: 1)
            .padding(.bottom, -20)
            
            Spacer()
        }
        .padding(.horizontal, 30)
        
        ZStack {
            VStack {
                HStack {
                    Text("Блюда:")
                    
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
                .padding(2)
                
                ForEach(array) { food in
                    HStack {
                        Text(food.name)
                            .fontWeight(.light)
                            .font(.system(size: 13))
                        
                        Spacer()
                        
                        Text("\(food.weight.description) грамм")
                            .fontWeight(.light)
                            .font(.system(size: 12))
                    }
                    .padding(.vertical, 1)
                    .padding(.horizontal, 5)
                    
                    
                    Divider()
                        .frame(height: 0.5)
                        .background(Color(.systemGray))
                        .padding(.vertical, 2)
                }
            }
            .padding(10)
            
        }
        .background(Color(uiColor: UIColor.systemMint))
        .cornerRadius(15)
        .shadow(radius: 2)
        .padding(.horizontal, 16)
    }
}
