//
//  File.swift
//  Theming
//
//  Created by Zachary Haven on 7/14/25.
//

import SwiftUI
import Theming

@available(iOS 16.0, *)
public protocol ButtonDesignAble {
    var backgroundColor: Color { get }
    var foregroundColor: Color { get }
    var cornerRadius: CGFloat { get }
}


public struct ButtonDesignToken: ButtonDesignAble {
    public var backgroundColor: Color
    public var foregroundColor: Color
    public var cornerRadius: CGFloat
    
    public init()
    {
        backgroundColor = Color(hex: DesignTokensProvider.colors.background)
        foregroundColor = Color(hex: DesignTokensProvider.colors.primary)
        cornerRadius = 8
    }
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }
        
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
