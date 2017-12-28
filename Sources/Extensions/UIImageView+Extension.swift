//
//  UIImageView+Extension.swift
//  Swift-Useful-Files
//
//  Created by Maksym Husar on 12/28/17.
//  Copyright © 2017 Maksym Husar. All rights reserved.
//

import UIKit
import SDWebImage

extension UIImageView {
    func setImage(withPath path: String, placeholderImage: UIImage? = nil) {
        self.image = placeholderImage
        let encodedPath = path.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed) ?? path
        if let url = URL(string: encodedPath) {
            self.sd_setShowActivityIndicatorView(true)
            self.sd_setIndicatorStyle(.gray)
            self.sd_setImage(with: url, placeholderImage: placeholderImage)
        }
    }
}
