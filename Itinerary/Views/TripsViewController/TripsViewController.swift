//
//  TripsViewController.swift
//  Itinerary
//
//  Created by John Martin on 9/8/18.
//  Copyright © 2018 John Martin. All rights reserved.
//

import UIKit

class TripsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var addButton: FloatingActionButton!

    struct Constants {
        static let cellId: String = "cellId"
        static let cellHeight: CGFloat = 160
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = Theme.backgroundColor
        addButton.layer.backgroundColor = Theme.tintColor.cgColor

        tableView.dataSource = self
        tableView.delegate = self

        TripFunctions.readTrips { [weak self] in self?.tableView.reloadData() }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "toAddTripSegue" else { return }

        let popup = segue.destination as! AddTripViewController
        popup.doneSaving = { [weak self] in
            self?.tableView.reloadData()
        }
    }
}

