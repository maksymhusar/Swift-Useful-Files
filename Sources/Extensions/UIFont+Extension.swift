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
        case sanFrancisco = ".SFUIText"
        //case someOther = "OTHER"
    }
    
    enum FontWeight {
        case light
        case regular
        case medium
        case bold
        case semibold
        
        func string(for family: FontFamily) -> String? {
            switch self {
            case .light: return "Light"
            case .regular: return nil
            case .medium: return "Medium"
            case .bold: return "Bold"
            case .semibold: return "Semibold"
            }
        }
    }
    
    class func font(ofSize size: CGFloat, weight: FontWeight = .regular, family: FontFamily = .sanFrancisco) -> UIFont {
        var fontName = family.rawValue
        if let weightString = weight.string(for: family) {
            fontName += "-\(weightString)"
        }
        guard let selectedFont = UIFont(name: fontName, size: size) else {
            preconditionFailure("Error! Custom font doesn't found")
        }
        return selectedFont
    }
}
