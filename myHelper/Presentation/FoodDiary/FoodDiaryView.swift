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
        NavigationStack {
            ZStack {
                ScrollView(.vertical) {
    //                LazyVStack {
    //
    //                }
                }
            }
            .navigationTitle("Дневник питания")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing:
                                    NavigationLink(destination:
                                                    DailySummaryView(viewModel: DailySummaryViewModel())) {
                Image(systemName: "calendar")
                    .foregroundColor(Color.init(uiColor: .systemPink))
            })
        }
    }
}

#Preview {
    FoodDiaryView(viewModel: FoodDiaryViewModel())
}
