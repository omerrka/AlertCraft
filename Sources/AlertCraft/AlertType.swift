//
//  AlertType.swift
//  AlertCraft-Example
//
//  Created by okarabulut on 13.09.2024.
//

import SwiftUI

public enum AlertType {
    case custom(CustomAlert)
    
    var alert: CustomAlert {
        switch self {
        case .custom(let alert):
            return alert
        }
    }
}
