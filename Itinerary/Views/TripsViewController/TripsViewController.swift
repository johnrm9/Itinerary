//
//  TripsViewController.swift
//  Itinerary
//
//  Created by John Martin on 9/8/18.
//  Copyright © 2018 John Martin. All rights reserved.
//

import UIKit

class TripsViewController: UIViewController {
    let cellId: String = "cellId"

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self

        TripFunctions.readTrips { [weak self] in self?.tableView.reloadData() }
    }
}

