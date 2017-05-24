//
//  Backable.swift
//  Swift-Useful-Files
//
//  Created by Husar Maksym on 26.02.17.
//  Copyright © 2017 Husar Maksym. All rights reserved.
//

import UIKit

protocol Backable {
    var backAction: (() -> Void)? { get set }
}
