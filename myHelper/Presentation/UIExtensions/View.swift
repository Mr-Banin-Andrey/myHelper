//
//  View.swift
//  myHelper
//
//  Created by Андрей Банин on 7.9.24..
//

import SwiftUI

extension View {
    func navigationBarBackButtonTitleHidden() -> some View {
        self.modifier(NavigationBarBackButtonTitleHiddenModifier())
    }
}