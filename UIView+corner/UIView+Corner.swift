//
//  UIView+Corner.swift
//  UIView+corner
//
//  Created by YJM on 2017/7/27.
//  Copyright © 2017年 YJM. All rights reserved.
//

import Foundation
import UIKit

///在使用xib或者storyboard时,写在layoutIfNeeded()方法中
extension UIView {
    /// 部分圆角
    /// - Parameters:
    ///   - corners: 需要实现为圆角的角，可传入多个
    ///   - radii: 圆角半径
    func corner(byRoundingCorners corners:UIRectCorner, cornerRadii: CGFloat) {
        let maskPath = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: cornerRadii, height: cornerRadii))
        let maskLayer = CAShapeLayer()
        maskLayer.frame = self.bounds
        maskLayer.path = maskPath.cgPath
        self.layer.mask = maskLayer
    }
    /// 全部圆角
    /// - Parameters:
    ///   - radii: 圆角半径
    func cornerAllRound(cornerRadii: CGFloat) {
        self.corner(byRoundingCorners: UIRectCorner.allCorners, cornerRadii: cornerRadii)
    }
    
}
