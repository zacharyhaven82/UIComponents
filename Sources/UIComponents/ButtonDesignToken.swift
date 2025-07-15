//
//  File.swift
//  Theming
//
//  Created by Zachary Haven on 7/14/25.
//

import SwiftUI
import Theming

public struct ButtonDesignToken: Sendable {
    public var backgroundColor: Color
    public var foregroundColor: Color
    public var cornerRadius: CGFloat
    
    public static let defaultButton = ButtonDesignToken(backgroundColor: Theming.DefaultButtonTheme.backgroundColor,
                                                        foregroundColor: Theming.DefaultButtonTheme.foregroundColor,
                                                        cornerRadius: Theming.DefaultButtonTheme.cornerRadius)
}
