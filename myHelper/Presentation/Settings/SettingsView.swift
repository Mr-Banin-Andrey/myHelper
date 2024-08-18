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
        ZStack {
            Text("Setting")
        }
    }
}

#Preview {
    SettingsView(viewModel: SettingsViewModel())
}

