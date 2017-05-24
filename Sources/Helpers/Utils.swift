//
//  Utils.swift
//  Swift-Useful-Files
//
//  Created by Husar Maksym on 2/16/17.
//  Copyright © 2017 Husar Maksym. All rights reserved.
//

import UIKit

struct Utils {
    static let isDefaultScaleEnabled = false // used for text size scaling
    
    static let deviceScaleMultiplier: CGFloat = {
        let height = UIScreen.main.bounds.size.height
        if height <= 568 { // iphone 5, 5s => 4 inch and less
            return 1.0
        }
        else if height <= 667 { // iphone 6, 6s => 4.7 inch
            return 1.3
        }
        else if height <= 736 { // iphone 6s+ 6+ => 5.5 inch
            return 1.3
        }
        else {
            return 1.0
        }
    }()
    
    // better to move to separate file
    static func cropImage(_ image: UIImage, width: CGFloat) -> UIImage {
        var imageWidth = image.size.width
        var imageHeight = image.size.height
        
        if imageWidth > width || imageHeight > width {
            if imageWidth > imageHeight {
                let scale = width / imageWidth
                imageWidth = width
                imageHeight = imageHeight * scale
            } else {
                let scale = width / imageHeight
                imageHeight = width
                imageWidth = imageWidth * scale
            }
        }
        
        let newWidth = CGFloat(imageWidth)
        let newHeight = CGFloat(imageHeight)
        
        UIGraphicsBeginImageContext(CGSize(width: newWidth, height: newHeight))
        image.draw(in: CGRect(x: 0, y: 0, width: newWidth, height: newHeight))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        guard let croppedImage = newImage else {
            fatalError("Error: Could not crop image")
        }
        return croppedImage
    }
}
