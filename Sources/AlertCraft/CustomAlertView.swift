//
//  CustomAlertView.swift
//  AlertCraft-Example
//
//  Created by okarabulut on 13.09.2024.
//

import SwiftUI

public struct CustomAlertView: View {
    public var alertType: AlertType
    public var primaryButtonAction: () -> Void
    public var secondaryButtonAction: () -> Void
    
    public init(alertType: AlertType, primaryButtonAction: @escaping () -> Void, secondaryButtonAction: @escaping () -> Void) {
        self.alertType = alertType
        self.primaryButtonAction = primaryButtonAction
        self.secondaryButtonAction = secondaryButtonAction
    }
    
    public var body: some View {
        VStack(spacing: 16) {
            VStack(spacing: 8) {
                if let image = alertType.alert.image {
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                }
                
                Text(alertType.alert.title)
                    .font(.headline)
                    .fontWeight(alertType.alert.titleFontWeight)
                    .foregroundColor(alertType.alert.titleColor)
                    .padding(.top)
                
                if let message = alertType.alert.message {
                    Text(message)
                        .fontWeight(alertType.alert.messageFontWeight)
                        .foregroundColor(alertType.alert.messageColor)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                }
            }
            
            VStack(spacing: 4) {
                Button(action: primaryButtonAction) {
                    Text(alertType.alert.primaryButton.text)
                        .fontWeight(alertType.alert.primaryButton.fontWeight)
                        .foregroundColor(alertType.alert.primaryButton.textColor)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(alertType.alert.primaryButton.backgroundColor)
                        .cornerRadius(10)
                }
                
                if let secondaryButton = alertType.alert.secondaryButton {
                    Button(action: secondaryButtonAction) {
                        Text(secondaryButton.text)
                            .fontWeight(secondaryButton.fontWeight)
                            .foregroundColor(secondaryButton.textColor)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(secondaryButton.backgroundColor)
                            .cornerRadius(10)
                    }
                    .padding(.top, 10)
                }
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 10)
        .frame(width: 300, height: 350)
    }
}
