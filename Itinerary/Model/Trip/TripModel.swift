//
//  TripModel.swift
//  Itinerary
//
//  Created by John Martin on 9/8/18.
//  Copyright © 2018 John Martin. All rights reserved.
//

import Foundation

class TripModel {
    var id: String!
    var title: String!

    init(title: String) {
        id = UUID().uuidString
        self.title = title
    }
}
