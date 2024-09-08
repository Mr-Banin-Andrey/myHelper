//
//  CustomPicker.swift
//  myHelper
//
//  Created by Андрей Банин on 8.9.24..
//

import SwiftUI

struct CustomPicker: View {
    
    var title: String
    @State private var number: Int = 100
    
    var body: some View {
        
        ZStack {
            VStack {
                HStack {
                    Text("\(number)")
                        .foregroundStyle(Color(uiColor: UIColor.systemYellow))
                    Text(title)
                        .foregroundStyle(Color(uiColor: UIColor.systemYellow))
                }
                .padding(8)
                .background(Color(uiColor: UIColor.systemGray))
                .clipShape(.capsule(style: .circular))
                
                HStack {
                    Picker("", selection: $number) {
                        ForEach(1...500, id: \.self) { number in
                            Text("\(number)")
                                .foregroundStyle(.secondary)
                        }
                    }
                    .pickerStyle(.wheel)
                    
                    Text(title)
                        .foregroundStyle(.secondary)
                }
                .padding(16)
            }
        }
    }
}
