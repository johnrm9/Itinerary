//
//  TripsViewController.swift
//  Itinerary
//
//  Created by John Martin on 9/8/18.
//  Copyright © 2018 John Martin. All rights reserved.
//

import UIKit

class TripsViewController: UIViewController {
    struct Constants {
        static let cellId: String = "cellId"
        static let cellHeight: CGFloat = 160
    }

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self

        TripFunctions.readTrips { [weak self] in self?.tableView.reloadData() }
    }
}

