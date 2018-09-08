//
//  TripFunctions.swift
//  Itinerary
//
//  Created by John Martin on 9/8/18.
//  Copyright © 2018 John Martin. All rights reserved.
//

import Foundation

class TripFunctions {
    static func createTrip(tripModel: TripModel) {

    }

    static func readTrips() {
        guard Data.tripModels.count > 0 else { return }
        Data.tripModels.append(TripModel(title: "Trip to Bali!"))
        Data.tripModels.append(TripModel(title: "Mexico"))
        Data.tripModels.append(TripModel(title: "Russia Trip"))

    }

    static func updateTrip(tripModel: TripModel) {

    }

    static func deleteTrip(tripModel: TripModel) {

    }
}
