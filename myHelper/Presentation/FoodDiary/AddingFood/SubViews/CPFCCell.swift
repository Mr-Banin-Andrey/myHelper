//
//  CPFCCell.swift
//  myHelper
//
//  Created by Андрей Банин on 9.9.24..
//

import SwiftUI

//struct CPFCCell: View {
//    
//    var body: some View {
//        VStack {
//            Text(viewModel.isShowCaloriesView ? "\(viewModel.calories) г": "Каллории")
//                .foregroundStyle(Color.yellow)
//            if viewModel.isShowCaloriesView {
//                Text("ккал")
//                    .foregroundStyle(Color.yellow)
//                    .font(.caption)
//            }
//        }
//        .padding(.vertical, viewModel.isShowCaloriesView ? 5 : 10)
//        .padding(.horizontal, viewModel.isShowCaloriesView ? 15 : 10)
//        .background(Color.gray)
//        .clipShape(.capsule)
//        .onTapGesture {
//            viewModel.showBottomSheet = true
//        }
//        .sheet(isPresented: $viewModel.showBottomSheet) {
//                CustomPicker(title: "Каллории", number: viewModel.calories) { calories in
//                    withAnimation {
//                        viewModel.calories = calories
//                        viewModel.isShowCaloriesView = true
//                    }
//                }
//                .presentationDetents([.height(300)])
//                .presentationDragIndicator(.visible)
//        }
//    }
//}
//
//#Preview {
//    CPFCCell()
//}

//struct CPFCCell: View {
//
//    var body: some View {
//        VStack {
//            Text(viewModel.isShowCaloriesView ? "\(viewModel.calories) г": "Каллории")
//                .foregroundStyle(Color.yellow)
//            if viewModel.isShowCaloriesView {
//                Text("ккал")
//                    .foregroundStyle(Color.yellow)
//                    .font(.caption)
//            }
//        }
//        .padding(.vertical, viewModel.isShowCaloriesView ? 5 : 10)
//        .padding(.horizontal, viewModel.isShowCaloriesView ? 15 : 10)
//        .background(Color.gray)
//        .clipShape(.capsule)
//        .onTapGesture {
//            viewModel.showBottomSheet = true
//        }
//        .sheet(isPresented: $viewModel.showBottomSheet) {
//                CustomPicker(title: "Каллории", number: viewModel.calories) { calories in
//                    withAnimation {
//                        viewModel.calories = calories
//                        viewModel.isShowCaloriesView = true
//                    }
//                }
//                .presentationDetents([.height(300)])
//                .presentationDragIndicator(.visible)
//        }
//    }
//}
//
//#Preview {
//    CPFCCell()
//}
