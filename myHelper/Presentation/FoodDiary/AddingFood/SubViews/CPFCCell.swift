//
//  CPFCCell.swift
//  myHelper
//
//  Created by Андрей Банин on 9.9.24..
//

import SwiftUI

struct CPFCCell: View {
    
    @State private var isShowView: Bool = false
    @Binding var label: String
    @Binding var text: String
    
    var placeholder: String
    var unitOfMeasurement: String
        
    var body: some View {
        VStack(spacing: 2) {
            HStack(spacing: 2) {
                TextField(
                    isShowView || !text.isEmpty ? placeholder : "",
                    text: isShowView || !text.isEmpty ? $text : $label
                ) { value in
                    withAnimation {
                        isShowView = value
                    }
                }
                
                if isShowView || !text.isEmpty {
                    Text(unitOfMeasurement)
                        .foregroundStyle(Color.yellow)
                }
            }
            
            if isShowView || !text.isEmpty {
                Text(label)
                    .foregroundStyle(Color.yellow)
            }
        }
        .fixedSize(horizontal: true, vertical: false)
        .textFieldStyle(.plain)
        .tint(.yellow)
        .foregroundStyle(Color.yellow)
        .frame(idealWidth: .infinity, maxWidth: .infinity)
        .padding(.vertical, isShowView || !text.isEmpty  ? 5 : 10)
        .padding(.horizontal, isShowView || !text.isEmpty  ? 15 : 10)
        .background(Color.gray)
        .clipShape(.capsule)
        .multilineTextAlignment(.center)
        .keyboardType(.decimalPad)
        
    }
}

#Preview {
    CPFCCell(
        label: .constant("белки"),
        text: .constant(""),
        placeholder: "0",
        unitOfMeasurement: "г")
}
