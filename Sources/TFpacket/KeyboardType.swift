//
//  KeyboardType.swift
//  TextFieldWidget
//
//  Created by Berke Kesgin on 15.01.2025.
//

import UIKit

public enum KeyboardType {
    
    /// The default keyboard type for general text input.
    case defaultType
    
    /// A numeric keyboard for entering numbers.
    case numberPad
    
    /// A keyboard optimized for email addresses.
    case email
    
    /// A keyboard tailored for URLs and web addresses.
    case url
    
    /// A numeric keyboard for phone number input.
    case phonePad
    
    /// A keyboard suited for both names and phone numbers.
    case namePhonePad
    
    /// A numeric keyboard with a decimal point.
    case decimalPad
    
    /// A keyboard with special characters for web searches.
    case webSearch
    
    /// A secure keyboard for entering sensitive data, like passwords.
    case secureText

    public var uiKeyboardType: UIKeyboardType {
        switch self {
        case .defaultType: return .default
        case .numberPad: return .numberPad
        case .email: return .emailAddress
        case .url: return .URL
        case .phonePad: return .phonePad
        case .namePhonePad: return .namePhonePad
        case .decimalPad: return .decimalPad
        case .webSearch: return .webSearch
        case .secureText: return .default
        }
    }
}
