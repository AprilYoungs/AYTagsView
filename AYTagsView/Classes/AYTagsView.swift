//
//  AYTagsView.swift
//  AYTagsView
//
//  Created by April Yang on 2020/5/1.
//  Copyright © 2020 April Yang. All rights reserved.
//

import UIKit

public class AYTagsView: UIScrollView {

    public var texts:[String]?
    public var horizonMargin: CGFloat = 12
    public var verticalMargin: CGFloat = 8
    public var font: UIFont = UIFont.systemFont(ofSize: 14)
    public var textColor: UIColor = UIColor.green
    public var textBackgroundColor: UIColor = UIColor.black
    // space between texts
    public var textGap: CGFloat = 10
    public var lineSpace: CGFloat = 5
    public var padding: UIEdgeInsets = UIEdgeInsets(top: 3, left: 8, bottom: 3, right: 8)
    public var textCornerRadius: CGFloat = 3
    public override func draw(_ rect: CGRect) {
        guard let texts = texts else { return }
        
        let attributes = [NSAttributedString.Key.backgroundColor: textBackgroundColor,
                          NSAttributedString.Key.foregroundColor: textColor,
                          NSAttributedString.Key.font: font
        ]
        
        var left: CGFloat = horizonMargin
        var top: CGFloat = verticalMargin
        var finalHeight: CGFloat = 0
        for str in texts {
            
            let textSize = (str as NSString).boundingRect(with: CGSize(width: rect.width-2*horizonMargin, height: rect.height-2*verticalMargin), options: .usesFontLeading, attributes: attributes, context: nil).size
            let lineHeight = padding.top + textSize.height + padding.bottom + lineSpace
            let textSpace = padding.left + textSize.width + padding.right + textGap
            if left + textSpace > rect.width {
                // next line
                left = horizonMargin
                top = top  + lineHeight
                finalHeight = top + lineHeight - lineSpace + verticalMargin
            }
            
            let textRect = CGRect(origin: CGPoint(x: left+padding.left, y: top+padding.top), size: textSize)
            let textBackgroudRect = textRect.inset(by: UIEdgeInsets(top: -padding.top, left: -padding.left, bottom: -padding.bottom, right: -padding.right))
            let backgroudPath = UIBezierPath(roundedRect: textBackgroudRect, cornerRadius: textCornerRadius)
            textBackgroundColor.setFill()
            backgroudPath.fill()
            
            (str as NSString).draw(in: textRect, withAttributes: attributes)
            
            left = left + textSpace
        }
        
        contentSize = CGSize(width: rect.size.width, height: finalHeight)
        
    }
    
    public override func layoutSubviews() {
        setNeedsDisplay()
    }

}
