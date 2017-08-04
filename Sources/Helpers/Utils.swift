//
//  Utils.swift
//  Swift-Useful-Files
//
//  Created by Husar Maksym on 2/16/17.
//  Copyright © 2017 Husar Maksym. All rights reserved.
//

import UIKit

struct Utils {
    static let isTextSizeScaleEnabledDefaultValue = false // used for text size scaling
    
    static let deviceScaleMultiplier: CGFloat = {
        let height = UIScreen.main.bounds.size.height
        if height <= 568 { // iphone 5, 5s => 4 inch and less
            return 1.0
        } else if height <= 667 { // iphone 6, 6s => 4.7 inch
            return 1.3
        } else if height <= 736 { // iphone 6s+ 6+ => 5.5 inch
            return 1.3
        } else {
            return 1.0
        }
    }()
}
