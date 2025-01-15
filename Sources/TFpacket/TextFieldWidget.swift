//
//  ContentView.swift
//  TextFieldWidget
//
//  Created by Berke Kesgin on 15.01.2025.
//

import SwiftUI

/// Parameters:
/// - `userInput`: A `@Binding` variable that represents the user's input text. This creates a two-way binding between the UI and your model.
/// - `placeholder`: A `String` that appears as a hint or guide inside the text field when it’s empty. The default value is an empty string.
/// - `keyboardType`: A `KeyboardType` enumeration value that determines which keyboard is shown when the user taps the text field. Possible types include `.defaultType`, `.numberPad`, `.email`, etc. Default is `.defaultType`.
/// - `fieldType`: A `TextFieldType` enumeration value that defines the appearance and style of the text field, such as default, warning, error, or success. This also controls visual elements like border color and icons. The default is `.default`.

/// Usage Example:
/// ```
/// TextFieldWidget(
///     userInput: $userName,
///     placeholder: "Enter Your Name",
///     keyboardType: .defaultType,
///     fieldType: .default
/// )
/// ```
/// This example demonstrates the use of a TextFieldWidget where the user is prompted to enter their name.
public struct TextFieldWidget: View {
    
    //MARK: - Properties
    @Binding var userInput: String
    var placeholder: String = ""
    
    var keyboardType: KeyboardType = .defaultType
    var fieldType: TextFieldType = .default
    
    private var backGroundColor: Color { fieldType.defaultSettings.backGroundColor }
    private var cornerRadius: CGFloat { fieldType.defaultSettings.cornerRadius }
    private var fontColor: Color { fieldType.defaultSettings.fontColor }
    private var fontSize: CGFloat { fieldType.defaultSettings.fontSize }
    private var borderWidth: CGFloat { fieldType.defaultSettings.borderWidth }
    private var borderColor: Color { fieldType.defaultSettings.borderColor }
    private var horizontalPadding: CGFloat { fieldType.defaultSettings.horizontalPadding }
    private var verticalPadding: CGFloat { fieldType.defaultSettings.verticalPadding }

    //MARK: - Initialization
    public init(userInput: Binding<String>,
                placeholder: String = "",
                keyboardType: KeyboardType = .defaultType,
                fieldType: TextFieldType = .default) {
        self._userInput = userInput
        self.placeholder = placeholder
        self.keyboardType = keyboardType
        self.fieldType = fieldType
    }
    
    //MARK: - View
    public var body: some View {
        VStack {
            ZStack(alignment: .trailing) {
                TextField(placeholder, text: $userInput)
                    .padding(.horizontal, horizontalPadding)
                    .padding(.vertical, verticalPadding)
                    .background(backGroundColor)
                    .cornerRadius(cornerRadius)
                    .overlay(
                        RoundedRectangle(cornerRadius: cornerRadius)
                            .stroke(borderColor, lineWidth: borderWidth)
                    )
                    .foregroundColor(fontColor)
                    .font(.system(size: fontSize))
                    .keyboardType(keyboardType.uiKeyboardType)
                    .autocorrectionDisabled()

                if fieldType == .warning {
                    Image(systemName: "exclamationmark.triangle.fill")
                        .foregroundColor(.yellow)
                        .padding(.trailing, 10) // Optional: Adjust padding if necessary
                } else if fieldType == .success {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(.green)
                        .padding(.trailing, 10) // Optional: Adjust padding if necessary
                } else if fieldType == .error {
                    Image(systemName: "exclamationmark.circle.fill")
                        .foregroundColor(.red)
                        .padding(.trailing, 10) // Optional: Adjust padding if necessary
                }
            }
            .padding(.horizontal)
        }
    }

    //MARK: - Functions
}

#Preview {
    TextFieldWidget(userInput: .constant(""))
}
