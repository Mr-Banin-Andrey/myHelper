//
//  SettingsView.swift
//  myHelper
//
//  Created by Андрей Банин on 18.8.24..
//

import SwiftUI

struct SettingsView: View {
    @StateObject var viewModel: SettingsViewModel
    
    var body: some View {        
        Form {
            Section {
                Toggle(isOn: $viewModel.isActiveNutritionalValue, label: {
                    Text("Считать вес блюда и КБЖУ")
                        .font(.body)
                })
            } header: {
                Text("Дневник питания")
            }
        }
    }
}

#Preview {
    SettingsView(viewModel: SettingsViewModel())
}
