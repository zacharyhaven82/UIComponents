//
//  File.swift
//  Theming
//
//  Created by Zachary Haven on 7/14/25.
//

import SwiftUI
import Theming

public struct ButtonDesignToken: Theming.ButtonThemeable, Sendable {
    public var backgroundColor: Color
    public var foregroundColor: Color
    public var cornerRadius: CGFloat
    
    public init(backgroundColor: Color, foregroundColor: Color, cornerRadius: CGFloat) {
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
        self.cornerRadius = cornerRadius
    }
    
    static let defaultButtong = ButtonDesignToken(backgroundColor: Color(Theming.StyleDictionaryEnum.buttonPrimaryBackground),
                                                  foregroundColor: Color(Theming.StyleDictionaryEnum.buttonPrimaryText),
                                                  cornerRadius: CGFloat(Theming.StyleDictionaryEnum.buttonBorderRadius))
}
