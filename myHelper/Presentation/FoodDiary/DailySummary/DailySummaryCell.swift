//
//  DailySummaryView.swift
//  myHelper
//
//  Created by Андрей Банин on 18.8.24..
//

import SwiftUI

struct DailySummaryCell: View {
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Spacer()
                    
                    Text("Четверг 05.08")
                        .fontWeight(.light)
                        .font(.system(size: 13))
                }
                .padding(8)
                
                VStack(spacing: 12) {
                    HStack {
                        Text("Утро:")
                            .font(.system(size: 14))
                        Spacer()
                    }
                    .padding(.horizontal, 8)
                    
                    HStack {
                        Text("День:")
                            .font(.system(size: 14))
                        Spacer()
                    }
                    .padding(.horizontal, 8)

                    HStack {
                        Text("Вечер:")
                            .font(.system(size: 14))
                        Spacer()
                    }
                    .padding(.horizontal, 8)
                }
                
                
                
                Spacer()
            }
        }
        .frame(height: 150)
        .background(Color(uiColor: .systemTeal))
        .cornerRadius(12)
        .shadow(radius: 5)
        .padding(.horizontal, 16)
    }
}

//#Preview {
//    DailySummaryView()
//}
