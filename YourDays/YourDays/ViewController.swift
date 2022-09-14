//
//  ViewController.swift
//  YourDays
//
//  Created by Aidos on 19.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var resultButton: UIButton!
    private var numberOfDays = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        resultButton.backgroundColor = .green
        resultButton.layer.cornerRadius = 12
    }

    @IBAction func resultButtonTapped(_ sender: Any) {
        infoLabel.text = "You've been living on 🌍 for \(numberOfDays)"
    }
    
    @IBAction func datePicker(_ sender: UIDatePicker) {
        let range = sender.date..<Date.now
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
    }
}

