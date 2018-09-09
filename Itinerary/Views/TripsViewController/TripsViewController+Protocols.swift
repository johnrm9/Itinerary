//
//  TripsViewController+Protocols.swift
//  Itinerary
//
//  Created by John Martin on 9/8/18.
//  Copyright © 2018 John Martin. All rights reserved.
//

import UIKit

extension TripsViewController: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId) as! TripsTableViewCell
        cell.tripModel = Data.tripModels[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.tripModels.count
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
}
