//
//  TextFieldType.swift
//  TextFieldWidget
//
//  Created by Berke Kesgin on 15.01.2025.
//

import Foundation
import SwiftUICore

public enum TextFieldType {
    
    /// The default type with standard appearance.
    case `default`
    
    /// Indicates an error with a red accent and border.
    case error
    
    /// Warns the user with an amber background and border.
    case warning
    
    /// Signifies success with a green border and text.
    case success


    public var defaultSettings: TextFieldSettings {
        switch self {
        case .default:
            return .init(
                backGroundColor: Color.gray.opacity(0.2),
                cornerRadius: 12,
                fontColor: Color.primary,
                fontSize: 16,
                borderWidth: 1.5,
                borderColor: Color.gray.opacity(0.3),
                horizontalPadding: 20,
                verticalPadding: 14
            )
        case .error:
            return .init(
                backGroundColor: .red.opacity(0.1),
                cornerRadius: 10,
                fontColor: .red,
                fontSize: 16,
                borderWidth: 1.5,
                borderColor: .red,
                horizontalPadding: 20,
                verticalPadding: 14
            )
        case .warning:
            return .init(
                backGroundColor: .yellow.opacity(0.1),
                cornerRadius: 10,
                fontColor: Color.brown.opacity(0.7),
                fontSize: 16,
                borderWidth: 1.5,
                borderColor: .yellow,
                horizontalPadding: 20,
                verticalPadding: 14
            )
        case .success:
            return .init(
                backGroundColor: .green.opacity(0.1),
                cornerRadius: 10,
                fontColor: .green,
                fontSize: 16,
                borderWidth: 1,
                borderColor: .green,
                horizontalPadding: 20,
                verticalPadding: 14
            )
        }
    }
}

public struct TextFieldSettings {
    var backGroundColor: Color = Color.gray.opacity(0.2)
    var cornerRadius: CGFloat = 12
    var fontColor: Color = Color.primary
    var fontSize: CGFloat = 14
    var borderWidth: CGFloat = 1.5
    var borderColor: Color = Color.gray.opacity(0.3)
    var horizontalPadding: CGFloat = 20
    var verticalPadding: CGFloat = 14
}


