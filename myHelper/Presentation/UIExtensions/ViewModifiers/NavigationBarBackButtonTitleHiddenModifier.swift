//
//  NavigationBarBackButtonTitleHiddenModifier.swift
//  myHelper
//
//  Created by Андрей Банин on 7.9.24..
//

import SwiftUI

struct NavigationBarBackButtonTitleHiddenModifier: ViewModifier {
    @Environment(\.dismiss) var dismiss
    
    @State private var showTabBar = false
    
    @ViewBuilder @MainActor
    func body(content: Content) -> some View {
        content
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(
                leading: Button(action: {
                    dismiss()
                    showTabBar.toggle()
                }, label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(Color.black)
                        .imageScale(.large)
                })
            )
            .contentShape(Rectangle())
            .gesture(
                DragGesture(coordinateSpace: .local)
                    .onEnded { value in
                        if value.translation.width > .zero
                            && value.translation.height > -30
                            && value.translation.height < 30 {
                            dismiss()
                            showTabBar.toggle()
                        }
                    }
            )
            .toolbar(showTabBar ? .visible : .hidden, for: .tabBar)
    }
}
