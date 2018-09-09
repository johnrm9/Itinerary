//
//  UIViewExtensions.swift
//  Itinerary
//
//  Created by John Martin on 9/8/18.
//  Copyright © 2018 John Martin. All rights reserved.
//

import UIKit

extension UIView {
    func addShadowAndRoundedCorners() {
        layer.addShadowAndRoundedCorners()
    }
}

extension CALayer {
    func addShadowAndRoundedCorners() {
        shadowOpacity = 1
        shadowOffset = .zero
        shadowColor = UIColor.darkGray.cgColor
        cornerRadius = 10
    }
}
