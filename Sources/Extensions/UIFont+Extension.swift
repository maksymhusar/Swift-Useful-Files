//
//  UIFont+Extension.swift
//  Swift-Useful-Files
//
//  Created by Maksym Husar on 9/7/17.
//  Copyright © 2017 Husar Maksym. All rights reserved.
//

import UIKit

extension UIFont {
    
    enum FontFamily: String {
        case standard = “APP_FONT”
    }
    
    enum FontWeight: String {
        case light = "Light"
        case regular = "Regular"
        case medium = "Medium"
        case bold = "Bold"
    }
    
    class func font(ofSize size: CGFloat, weight: FontWeight = .regular, family: FontFamily = .standard) -> UIFont {        
        let fontName = "\(family.rawValue)-\(weight.rawValue)"
        guard let selectedFont = UIFont(name: fontName, size: size) else {
            preconditionFailure("Error! Custom font doesn't found")
        }
        return selectedFont
    }
}
