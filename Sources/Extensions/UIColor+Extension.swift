//
//  UIColor+Extension.swift
//  Swift-Useful-Files
//
//  Created by Husar Maksym on 2/16/17.
//  Copyright © 2017 Husar Maksym. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        let newRed = CGFloat(red) / 255.0
        let newGreen = CGFloat(green) / 255.0
        let newBlue = CGFloat(blue) / 255.0
        self.init(red: newRed, green: newGreen, blue: newBlue, alpha: 1.0)
    }
    
}
