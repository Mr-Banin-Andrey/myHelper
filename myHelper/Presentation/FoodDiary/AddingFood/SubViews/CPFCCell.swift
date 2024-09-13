//
//  CPFCCell.swift
//  myHelper
//
//  Created by Андрей Банин on 9.9.24..
//

import SwiftUI

struct CPFCCell: View {
    
    var name: String
    var unitOfMeasurement: String
    var shortName: String
    
    @State private var isShowView: Bool = false
    @State private var showBottomSheet: Bool = false
    @Binding var value: Int
    
    @Binding var text: String
    
    var body: some View {
//        VStack {
//            if isShowView {
//                Text(isShowView ? "\(value) \(unitOfMeasurement)": name)
//                    .foregroundStyle(Color.yellow)
//                
//                Text(shortName)
//                    .foregroundStyle(Color.yellow)
//                    .font(.caption)
//            } else {
//                Text(isShowView ? "\(value) \(unitOfMeasurement)": name)
//                    .foregroundStyle(Color.yellow)
//            }
//        }
//        .padding(.vertical, isShowView ? 5 : 10)
//        .padding(.horizontal, isShowView ? 15 : 10)
//        .background(Color.gray)
//        .clipShape(.capsule)
//        .onTapGesture {
//            isShowView = true
//        }
        
        
        VStack {
            if !isShowView {
                TextField(isShowView ? "белки" : "", text: $text) { value in
                    
                }
            } else {
                TextField(isShowView ? "белки" : "", text: $text) { value in
                    
                }
                
                Text(isShowView ? "\(value) \(unitOfMeasurement)": name)
                    .foregroundStyle(Color.yellow)
            }
        }
        .fixedSize(horizontal: true, vertical: false)
        .foregroundStyle(Color.yellow)
        .padding(.vertical, isShowView ? 5 : 10)
        .padding(.horizontal, isShowView ? 15 : 10)
        .background(Color.gray)
        .clipShape(.capsule)
        
        .onTapGesture {
            withAnimation {
                isShowView = true
            }
        }
        
//        .sheet(isPresented: $showBottomSheet) {
//            CustomPicker(title: unitOfMeasurement, number: Double(value)) { newValue in
//                withAnimation {
//                    value = newValue
//                    isShowView = true
//                }
//            }
//            .presentationDetents([.height(300)])
//            .presentationDragIndicator(.visible)
//        }
    }
}

#Preview {
    CPFCCell(name: "белки", unitOfMeasurement: "gramm", shortName: "g", value: .constant(50), text: .constant(""))
}
