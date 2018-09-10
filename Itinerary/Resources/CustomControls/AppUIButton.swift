//
//  AppUIButton.swift
//  Itinerary
//
//  Created by John Martin on 9/9/18.
//  Copyright © 2018 John Martin. All rights reserved.
//

import UIKit

class AppUIButton: UIButton {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        backgroundColor = Theme.tintColor
        layer.cornerRadius = frame.height / 2
        setTitleColor(.white, for: .normal)
    }
}
