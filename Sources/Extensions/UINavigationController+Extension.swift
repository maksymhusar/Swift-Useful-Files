//
//  UINavigationController+Extension.swift
//  Swift-Useful-Files
//
//  Created by Husar Maksym on 17.03.17.
//  Copyright © 2017 Husar Maksym. All rights reserved.
//

import UIKit

extension UINavigationController {
    
    func setTransitionAnimation(type: String, subtype: String? = nil) {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = type
        transition.subtype = subtype
        self.view.layer.removeAllAnimations()
        self.view.layer.add(transition, forKey: kCATransition)
    }
}
