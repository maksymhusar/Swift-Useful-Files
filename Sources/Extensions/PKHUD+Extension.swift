//
//  PKHUD+Extension.swift
//  Swift-Useful-Files
//
//  Created by Husar Maksym on 3/14/17.
//  Copyright © 2017 Husar Maksym. All rights reserved.
//

import PKHUD

extension HUD {
    static func showProgress(hideTimeout: TimeInterval = 30) {
        guard Reachability.isInternetAvailable else { return }
        self.show(.progress)
        self.hide(afterDelay: hideTimeout)
    }
    
}
