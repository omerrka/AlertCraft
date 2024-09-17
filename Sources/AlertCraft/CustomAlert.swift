//
//  CustomAlert.swift
//  AlertCraft-Example
//
//  Created by okarabulut on 13.09.2024.
//

import SwiftUI

public struct CustomAlert {
    var title: String
    var titleColor: Color
    var titleFontWeight: Font.Weight
    var message: String?
    var messageColor: Color
    var messageFontWeight: Font.Weight
    var image: Image?
    var primaryButton: AlertButton
    var secondaryButton: AlertButton?

    /// Only two required parameters are title and primaryButton. All other parameters have default values.
    /// - Parameters:
    ///   - title: The main title text displayed in the alert.
    ///   - titleColor: The color of the title text. Defaults to black.
    ///   - titleFontWeight: The font weight for the title text. Defaults to bold.
    ///   - message: The message text displayed below the title in the alert.
    ///   - messageColor: The color of the message text. Defaults to gray.
    ///   - messageFontWeight: The font weight for the message text. Defaults to regular.
    ///   - image: An optional image displayed at the top of the alert, if provided.
    ///   - primaryButton: The primary action button that appears in the alert. This parameter is required.
    ///   - secondaryButton: An optional secondary action button for the alert, if provided.
    ///   
    public init(
        title: String,
        titleColor: Color = .black,
        titleFontWeight: Font.Weight = .bold,
        message: String? = nil,
        messageColor: Color = .gray,
        messageFontWeight: Font.Weight = .regular,
        image: Image? = nil,
        primaryButton: AlertButton,
        secondaryButton: AlertButton? = nil
    ) {
        self.title = title
        self.titleColor = titleColor
        self.titleFontWeight = titleFontWeight
        self.message = message
        self.messageColor = messageColor
        self.messageFontWeight = messageFontWeight
        self.image = image
        self.primaryButton = primaryButton
        self.secondaryButton = secondaryButton
    }
}

public struct AlertButton {
    var text: String
    var backgroundColor: Color
    var textColor: Color
    var fontWeight: Font.Weight

    /// Only two required parameter is  text. All other parameters have default values.
    /// - Parameters:
    ///   - isShown: A boolean indicating whether the button should be displayed.
    ///   - text: The label or title of the button.
    ///   - backgroundColor: The background color of the button. Defaults to blue.
    ///   - textColor: The color of the text displayed on the button. Defaults to white.
    ///   - fontWeight: The font weight for the button text. Defaults to bold.
    ///
    public init(
        text: String,
        backgroundColor: Color = .blue,
        textColor: Color = .white,
        fontWeight: Font.Weight = .bold
    ) {
        self.text = text
        self.backgroundColor = backgroundColor
        self.textColor = textColor
        self.fontWeight = fontWeight
    }
}
