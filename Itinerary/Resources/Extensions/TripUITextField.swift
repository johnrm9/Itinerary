//
//  TripUITextField.swift
//  Itinerary
//
//  Created by John Martin on 9/14/18.
//  Copyright © 2018 John Martin. All rights reserved.
//

import UIKit

class TripUITextField: UITextField {
    let padding = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 5)

    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }

    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }

    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
}
