//
//  PaddingLabel.swift
//  InstagramClone
//
//  Created by anna.sibirtseva on 30/06/2019.
//  Copyright © 2019 anna.sibirtseva. All rights reserved.
//

import UIKit

@IBDesignable class PaddingLabel: UILabel {

    @IBInspectable var topInset: CGFloat = 15.0
    @IBInspectable var bottomInset: CGFloat = 0.0
    @IBInspectable var leftInset: CGFloat = 8.0
    @IBInspectable var rightInset: CGFloat = 8.0

    override func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets(top: topInset, left: leftInset, bottom: bottomInset, right: rightInset)
        super.drawText(in: rect.inset(by: insets))
    }

    override var intrinsicContentSize: CGSize {
        let size = super.intrinsicContentSize
        return CGSize(width: size.width + leftInset + rightInset,
                      height: size.height + topInset + bottomInset)
    }
}
//extension UILabel {
//    func labelInsets(topInset: CGFloat, bottomInset: CGFloat, rightInset: CGFloat, leftInset: CGFloat) {
//
//        func drawText(in rect: CGRect) {
//                let insets = UIEdgeInsets(top: topInset, left: leftInset, bottom: bottomInset, right: rightInset)
//            super.draw(rect.inset(by: insets))
//            }
//
//        var intrinsicContentSize: CGSize {
//                let size = super.intrinsicContentSize
//                return CGSize(width: size.width + leftInset + rightInset,
//                              height: size.height + topInset + bottomInset)
//            }
//        }
//
//    }
//
