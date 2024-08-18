//
//  FoodDiaryView.swift
//  myHelper
//
//  Created by Андрей Банин on 18.8.24..
//

import SwiftUI

struct FoodDiaryView: View {
    @StateObject var viewModel: FoodDiaryViewModel
    
    var body: some View {
        ZStack {
            ScrollView(.vertical) {
//                LazyVStack {
//                    
//                }
                DailySummaryView()
                    .padding(.vertical, 4)
                DailySummaryView()
                    .padding(.vertical, 4)
                DailySummaryView()
                    .padding(.vertical, 4)
                DailySummaryView()
                    .padding(.vertical, 4)
                DailySummaryView()
                    .padding(.vertical, 4)
                DailySummaryView()
                    .padding(.vertical, 4)
            }
        }
        
    }
}

#Preview {
    FoodDiaryView(viewModel: FoodDiaryViewModel())
}
