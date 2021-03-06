//
//  UILabel+Extension.swift
//  Swift-Useful-Files
//
//  Created by Husar Maksym on 2/16/17.
//  Copyright © 2017 Husar Maksym. All rights reserved.
//

import UIKit

extension UILabel {
    
    func setText(_ text: String, lineHeight: CGFloat, isScalable: Bool = Utils.isTextSizeScaleEnabledDefaultValue) {
        self.text = text
        let newLineHeight = isScalable ? lineHeight * Utils.deviceScaleMultiplier : lineHeight
        setLineHeight(newLineHeight)
    }
    
    func setText(_ text: String, letterSpacing: CGFloat) {
        self.text = text
        setLetterSpacing(letterSpacing)
    }
    
    private func setLetterSpacing(_ letterSpacing: CGFloat) {
        if let attributedString = self.attributedText {
            let newAttributedString = NSMutableAttributedString(attributedString: attributedString)
            
            newAttributedString.addAttribute(NSAttributedStringKey.kern, value: letterSpacing, range: NSRange(location: 0, length: attributedString.string.count))
            self.attributedText = newAttributedString
            
        } else if let text = self.text {
            let attributedString = NSMutableAttributedString(string: text)

            attributedString.addAttribute(NSAttributedStringKey.kern, value: letterSpacing, range: NSRange(location: 0, length: text.count))
            self.attributedText = attributedString
        }
    }
    
    private func setLineHeight(_ lineHeight: CGFloat) {
        let style = NSMutableParagraphStyle()
        
        style.lineHeightMultiple = lineHeight / self.font.lineHeight
        style.lineBreakMode = .byTruncatingTail
        style.alignment = self.textAlignment
        
        if let attributedString = self.attributedText {
            let newAttributedString = NSMutableAttributedString(attributedString: attributedString)
            newAttributedString.addAttribute(NSAttributedStringKey.paragraphStyle,
                                             value: style,
                                             range: NSRange(location: 0, length: attributedString.string.count))
            
            self.attributedText = newAttributedString
            
        } else if let text = self.text {
            let attributeString = NSMutableAttributedString(string: text)
            attributeString.addAttribute(NSAttributedStringKey.paragraphStyle,
                                         value: style,
                                         range: NSRange(location: 0, length: text.count))
            
            self.attributedText = attributeString
        }
    }
}
