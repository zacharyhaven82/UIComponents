//
//  File.swift
//  Theming
//
//  Created by Zachary Haven on 7/14/25.
//

import SwiftUI
import Theming

@available(iOS 16.0, *)
public struct ThemedButton: View {
    let title: String
    let designToken: Theming.ButtonThemeable
    weak var actionHandler: ButtonActionHandler?
    
    public init(title: String, designToken: Theming.ButtonThemeable = Theming.DefaultButtonTheme(), actionHandler: ButtonActionHandler) {
        self.title = title
        self.designToken = designToken
        self.actionHandler = actionHandler
    }
    
    public var body: some View {
        Button(action: {
            actionHandler?.handleButtonTap()
        }) {
            Text(title)
                .foregroundColor(designToken.foregroundColor)
                .padding()
                .frame(maxWidth: .infinity)
                .background(designToken.backgroundColor)
                .cornerRadius(designToken.cornerRadius)
        }
    }
}
