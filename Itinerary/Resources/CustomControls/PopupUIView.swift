//
//  PopupUIView.swift
//  Itinerary
//
//  Created by John Martin on 9/9/18.
//  Copyright © 2018 John Martin. All rights reserved.
//

import UIKit

class PopupUIView: UIView {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }

    private func setupView() {
        layer.addShadowAndRoundedCorners()
        backgroundColor = Theme.backgroundColor
    }
}

fileprivate extension CALayer {
    func addShadowAndRoundedCorners() {
        shadowOpacity = 1
        shadowOffset = .zero
        shadowColor = UIColor.darkGray.cgColor
        cornerRadius = 10
    }
}
