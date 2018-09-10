//
//  SettingsViewController.swift
//  Itinerary
//
//  Created by John Martin on 9/9/18.
//  Copyright © 2018 John Martin. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var tripTextField: UITextField!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var saveButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.font = UIFont(name: Theme.mainFontName, size: 24)

    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }

    @IBAction func cancel(_ sender: UIButton) {
        defer { dismiss(animated: true) }

    }

    @IBAction func save(_ sender: UIButton) {
        defer { dismiss(animated: true) }
    }
}
