//
//  Notification+Extension.swift
//  Swift-Useful-Files
//
//  Created by Husar Maksym on 2/14/17.
//  Copyright © 2017 Husar Maksym. All rights reserved.
//

import Foundation

extension Notification.Name {
    static let InternetNotAvailable = Notification.Name("InternetNotAvailable")
}

// Used as a namespace for all `Notification` user info dictionary keys
extension Notification.Key {
    static let ErrorDescription = "com.notification.key.errorDescription"
}
