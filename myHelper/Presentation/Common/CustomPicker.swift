//
//  CustomPicker.swift
//  myHelper
//
//  Created by Андрей Банин on 8.9.24..
//

import SwiftUI

struct CustomPicker: View {
    @Environment(\.dismiss) var dismiss
    
    var title: String
    @State var number: Int = 100
    
    let action: (Int) -> Void
    
    var body: some View {
        VStack(spacing: 1) {
            HStack {
                Text("\(number)")
                
                Text(title)
            }
            .padding(8)
            .padding(.top, 16)

            Divider()
                .frame(height: 0.5)
                .background(Color(.systemGray))
                .padding(.horizontal, 16)
            
            Button(action: {
                action(number)
                dismiss()
            }, label: {
                Text("Добавить")
                    .foregroundStyle(Color.yellow)
                    .padding(.horizontal, 30)
                    .padding(.vertical, 16)
                    .background(Color.gray)
                    .cornerRadius(25)
                    .padding(.top, 16)
            })
            
            HStack {
                Picker("", selection: $number) {
                    ForEach(1...500, id: \.self) { number in
                        Text("\(number)")
                    }
                }
                .pickerStyle(.wheel)
                
                if title != "" {
                    Text(title)
                        .padding(16)
                }
            }
//            .background(Color(uiColor: UIColor(_colorLiteralRed: 0.5, green: 0.5, blue: 0.0, alpha: 0.1)))
//            .cornerRadius(15)
            .padding(16)
        }
        .frame(maxHeight: 300)
    }
}
//
//#Preview {
//    CustomPicker(title: "Каллории")
//}
