//
//  UnwrappableNetworkResponse.swift
//  Swift-Useful-Files
//
//  Created by Husar Maksym on 4/17/17.
//  Copyright © 2017 Husar Maksym. All rights reserved.
//

import Foundation
import Alamofire

protocol UnwrappableNetworkResponse {
    func unwrapResult<T>(_ result: Result<T>, withErrorNotificationName errorNotificationName: Notification.Name) -> T?
    func postMainQueueNotification(name: Notification.Name, userInfo: [AnyHashable : Any]?)
}

extension UnwrappableNetworkResponse {
    
    func unwrapResult<T>(_ result: Result<T>, withErrorNotificationName errorNotificationName: Notification.Name) -> T? {
        guard let resultValue = result.value else {
            var userInfo: [AnyHashable : Any]?
            if let errorDescription = result.error?.localizedDescription {
                userInfo = [Notification.Key.ErrorDescription : errorDescription]
            }
            self.postMainQueueNotification(name: errorNotificationName, userInfo: userInfo)
            return nil
        }
        return resultValue
    }
    
    func postMainQueueNotification(name: Notification.Name, userInfo: [AnyHashable : Any]? = nil) {
        DispatchQueue.main.async {
            NotificationCenter.default.post(name: name, object: nil, userInfo: userInfo)
        }
    }
}
