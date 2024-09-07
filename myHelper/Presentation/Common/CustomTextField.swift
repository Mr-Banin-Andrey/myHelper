//
//  CustomTextField.swift
//  myHelper
//
//  Created by Андрей Банин on 7.9.24..
//

import SwiftUI

struct CustomTextField: View {
    var label: String
    var placeholder: String = ""
    var keyboardType: UIKeyboardType = .default
    var typeField: TypeField = .emptyField
    var errorMessage: String = ""
    
    @Binding var showError: Bool
    @Binding var text: String
    @State var showTitleLabel: Bool
        
    enum TypeField {
        case email
        case phone
        case birthday
        case name
        case emptyField
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            if showTitleLabel {
                Text(label == "" ? placeholder : label)
                    .foregroundColor(.secondary)
                    .font(.caption)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 16)
                    .opacity(showTitleLabel ? 1 : 0)
                    .animation(.easeIn(duration: 1.0), value: showTitleLabel)
            }
            
            TextField(showTitleLabel ? "" : placeholder, text: $text) { value in
                withAnimation {
                    if value == true {
                        showTitleLabel = value
                    }
                }
            }
//            .onChange(of: text) { newValue in
//                switch typeField {
//                case .email:
//                    showError = !ValidationData.checkIsEmail(newValue)
//                case .phone:
//                    showError = !StringValidator.validatePhoneNumber(newValue)
//                case .birthday:
//                    showError = !StringValidator.validateBirthday(newValue)
//                case .name:
//                    showError = !ValidationData.isValidName(newValue)
//                case .emptyField:
//                    break
//                }
//            }
            .padding(.horizontal, 16)
            .background(.clear)
            .font(.body)
//            .foregroundColor(.titleColor)
//            .accentColor(.titleColor)
            .onSubmit { return }
            .keyboardType(keyboardType)
            
            if showError {
                Text(errorMessage)
//                    .foregroundColor(.errorTextColor)
//                    .font(Font(UIFont.sFProTextRegular400.withSize(12)))
                    .padding(.horizontal, 16)
            }
            
//            CustomDivider()
//                .padding(.horizontal, 16)
            Divider()
                .frame(height: 1)
                .background(Color(.systemGray))
                .padding(.horizontal, 16)
        }
    }
}
