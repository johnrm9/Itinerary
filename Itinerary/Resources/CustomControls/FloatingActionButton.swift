//
//  FloatingActionButton.swift
//  Itinerary
//
//  Created by John Martin on 9/9/18.
//  Copyright © 2018 John Martin. All rights reserved.
//

import UIKit

class FloatingActionButton: UIButton {

    override func draw(_ rect: CGRect) {
        layer.createFloatingActionButton()
    }
}

fileprivate extension CALayer {
    func createFloatingActionButton() {
        let height: CGFloat = 10
        cornerRadius = frame.height / 2
        shadowOpacity = 0.25
        shadowRadius = height / 2
        shadowOffset = CGSize(width: 0, height: height)
    }
}
