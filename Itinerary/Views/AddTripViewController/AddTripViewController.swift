//
//  SettingsViewController.swift
//  Itinerary
//
//  Created by John Martin on 9/9/18.
//  Copyright © 2018 John Martin. All rights reserved.
//

import UIKit

protocol DoneSavingCallBack: class {
    var doneSaving: (() -> Void)? { get }
}

class AddTripViewController: UIViewController, UITextFieldDelegate, DoneSavingCallBack {
    var doneSaving: (() -> Void)?

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var tripTextField: UITextField!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var saveButton: UIButton!

    private var saveEnabled: Bool = false {
        didSet {
            saveButton.isEnabled = saveEnabled
            saveButton.backgroundColor = saveEnabled ? Theme.tintColor : Theme.tintDimmedColor
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        tripTextField.delegate = self

        titleLabel.font = UIFont(name: Theme.mainFontName, size: 24)
        tripTextField.becomeFirstResponder()
        saveEnabled = false

    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard saveEnabled else { return false }
        textField.resignFirstResponder()
        save(saveButton)
        return true
    }

    @IBAction func tripTextFieldChanged(_ sender: UITextField) {
        guard let text = sender.text else { return }
        saveEnabled = !text.trimmingCharacters(in: .whitespaces).isEmpty
    }

    @IBAction func cancel(_ sender: UIButton) {
        defer { dismiss(animated: true) }

    }

    @IBAction func save(_ sender: UIButton) {
        defer { dismiss(animated: true) }

        let title = tripTextField.text!
        let tripModel = TripModel(title: title)
        TripFunctions.createTrip(tripModel: tripModel)

        guard let doneSaving = doneSaving else { return }
        doneSaving()
    }
}
