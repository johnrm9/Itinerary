//
//  TripsTableViewCell.swift
//  Itinerary
//
//  Created by John Martin on 9/8/18.
//  Copyright © 2018 John Martin. All rights reserved.
//

import UIKit

class TripsTableViewCell: UITableViewCell {

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var titleLabel: UILabel!

    var tripModel: TripModel! {
        didSet {
            titleLabel.text = tripModel.title
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        cardView.addShadowAndRoundedCorners()
    }
}
