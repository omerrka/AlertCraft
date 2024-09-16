//
//  CustomAlert.swift
//  AlertCraft-Example
//
//  Created by okarabulut on 13.09.2024.
//

import SwiftUI

public struct CustomAlert {
    var title: String?
    var titleColor: Color?
    var titleFontWeight: Font.Weight?
    var message: String?
    var messageColor: Color?
    var messageFontWeight: Font.Weight?
    var image: Image?
    var primaryButton: AlertButton?
    var secondaryButton: AlertButton?
    
    public init(title: String? = nil, titleColor: Color? = nil, titleFontWeight: Font.Weight? = nil, message: String? = nil, messageColor: Color? = nil, messageFontWeight: Font.Weight? = nil, image: Image? = nil, primaryButton: AlertButton? = nil, secondaryButton: AlertButton? = nil) {
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
    var isShown: Bool?
    var text: String?
    var backgroundColor: Color?
    var textColor: Color?
    var fontWeight: Font.Weight?
    
    public init(isShown: Bool? = nil, text: String? = nil, backgroundColor: Color? = nil, textColor: Color? = nil, fontWeight: Font.Weight? = nil) {
        self.isShown = isShown
        self.text = text
        self.backgroundColor = backgroundColor
        self.textColor = textColor
        self.fontWeight = fontWeight
    }
}
