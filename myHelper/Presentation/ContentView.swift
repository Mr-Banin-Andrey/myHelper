//
//  ContentView.swift
//  myHelper
//
//  Created by Андрей Банин on 18.8.24..
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            FoodDiaryView(viewModel: FoodDiaryViewModel())
                .tabItem {
                    Label("Питание", systemImage: "fork.knife.circle")
                }
            
            SettingsView(viewModel: SettingsViewModel())
                .tabItem {
                    Label("Настройки", systemImage: "gearshape")
                }
        }
        
    }
}

#Preview {
    ContentView()
}
