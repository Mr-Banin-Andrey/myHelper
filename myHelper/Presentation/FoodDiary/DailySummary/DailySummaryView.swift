//
//  DailySummaryView.swift
//  myHelper
//
//  Created by Андрей Банин on 19.8.24..
//

import SwiftUI

struct DailySummaryView: View {
    @StateObject var viewModel: DailySummaryViewModel
    
    var body: some View {
        ScrollView(.vertical) {
//                LazyVStack {
//
//                }
            DailySummaryCell()
                .padding(.vertical, 4)
            DailySummaryCell()
                .padding(.vertical, 4)
            DailySummaryCell()
                .padding(.vertical, 4)

        }
        .navigationBarBackButtonTitleHidden()
    }
}

#Preview {
    DailySummaryView(viewModel: DailySummaryViewModel())
}
