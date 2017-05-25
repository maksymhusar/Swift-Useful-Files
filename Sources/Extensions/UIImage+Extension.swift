//
//  UIImage+Extension.swift
//  Swift-Useful-Files
//
//  Created by Husar Maksym on 5/25/17.
//  Copyright © 2017 Husar Maksym. All rights reserved.
//

import UIKit

extension UIImage {
    func croppedImage(withMaxWidth width: CGFloat) -> UIImage {
        var imageWidth  = self.size.width
        var imageHeight = self.size.height
        
        guard imageWidth > width || imageHeight > width else {
            return self
        }
        
        if imageWidth > imageHeight {
            let scale = width / imageWidth
            imageWidth = width
            imageHeight = imageHeight * scale
        } else {
            let scale = width / imageHeight
            imageHeight = width
            imageWidth = imageWidth * scale
        }
        
        UIGraphicsBeginImageContext(CGSize(width: imageWidth, height: imageHeight))
        self.draw(in: CGRect(x: 0, y: 0, width: imageWidth, height: imageHeight))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        guard let image = newImage else {
            assertionFailure("Error: UIGraphicsGetImageFromCurrentImageContext failed. \(#function) in \(#file)")
            return self
        }
        return image
    }
}

