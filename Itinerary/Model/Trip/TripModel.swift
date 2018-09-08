//
//  TripModel.swift
//  Itinerary
//
//  Created by John Martin on 9/8/18.
//  Copyright © 2018 John Martin. All rights reserved.
//

import Foundation

class TripModel {
    let id: UUID = UUID()
    var title: String

    init(title: String) {
        self.title = title
    }
}
