//
//  ConnectionStatusHandler.swift
//  Swift-Useful-Files
//
//  Created by Maksym Husar on 12/28/17.
//  Copyright © 2017 Maksym Husar. All rights reserved.
//

import Foundation
import PKHUD // just delete if not use

class ConnectionStatusHandler {
    static let instance = ConnectionStatusHandler()
    private init() { }
    
    // MARK: - Public methods
    func start() {
        addNotifications()
    }
    
    func stop() {
        removeNotifications()
    }
    
    // MARK: - Private methods
    private func addNotifications() {
        NotificationCenter.default.addObserver(self, selector: #selector(internetNotAvailable(_:)), name: .InternetNotAvailable, object: nil)
    }
    
    private func removeNotifications() {
        NotificationCenter.default.removeObserver(self)
    }
    
    @objc private func internetNotAvailable(_ notification: Notification) {
        if let currentVC = UIApplication.topViewController(), currentVC is UIAlertController == false {
            HUD.hide() // just delete if not use
            let title = "No Internet Connection"
            let message = "Make sure your device is connected to the Internet"
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "OK", style: .cancel, handler: { _ in })
            alert.addAction(cancelAction)
            currentVC.present(alert, animated: true, completion: nil)
        }
    }
}
