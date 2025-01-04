//
//  TrainingDiaryView.swift
//  myHelper
//
//  Created by Андрей Банин on 6.12.24..
//

import SwiftUI

struct TrainingDiaryView: View {
    
    @StateObject var viewModel: TrainingDiaryViewModel
        
    @State private var dates: Set<DateComponents> = []
    
    var body: some View {
        NavigationView {
            ScrollView {
                
                
                VStack {
                    MultiDatePicker("Dates", selection: $dates)
                        .fixedSize()
                    
                    Spacer()
                }
            }
            .navigationTitle("Тренировки")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}
//
//#Preview {
//    TrainingDiaryView(viewModel: TrainingDiaryViewModel())
//}
