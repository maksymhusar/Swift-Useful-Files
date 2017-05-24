//
//  NibLoadableView.swift
//  Swift-Useful-Files
//
//  Created by Husar Maksym on 2/16/17.
//  Copyright © 2017 Husar Maksym. All rights reserved.
//

import UIKit

protocol NibLoadableView: class {
    static var nibName: String { get }
}

extension NibLoadableView where Self: UIView {
    static var nibName: String {
        return String(describing: Self.self)
    }
}
