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
        .tint(.black)
        .onAppear(perform: {
            UITabBar.appearance().unselectedItemTintColor = .systemBrown
            UITabBar.appearance().backgroundColor = .systemGray4.withAlphaComponent(0.4)
            UITabBarItem.appearance().badgeColor = .systemPink
            UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.systemPink]
//            UITabBar.appearance().scrollEdgeAppearance = UITabBarAppearance()
        })
    }
}

#Preview {
    ContentView()
}
