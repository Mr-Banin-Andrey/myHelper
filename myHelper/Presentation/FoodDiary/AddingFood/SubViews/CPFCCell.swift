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
    @State var value: Int
    
    var body: some View {
        VStack {
            Text(isShowView ? "\(value) \(unitOfMeasurement)": name)
                .foregroundStyle(Color.yellow)
            if isShowView {
                Text(shortName)
                    .foregroundStyle(Color.yellow)
                    .font(.caption)
            }
        }
        .padding(.vertical, isShowView ? 5 : 10)
        .padding(.horizontal, isShowView ? 15 : 10)
        .background(Color.gray)
        .clipShape(.capsule)
        .onTapGesture {
            showBottomSheet = true
        }
        .sheet(isPresented: $showBottomSheet) {
            CustomPicker(title: unitOfMeasurement, number: value) { newValue in
                withAnimation {
                    value = newValue
                    isShowView = true
                }
            }
            .presentationDetents([.height(300)])
            .presentationDragIndicator(.visible)
        }
    }
}
