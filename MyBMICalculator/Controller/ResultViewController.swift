//
//  ResultViewController.swift
//  MyBMICalculator
//
//  Created by Лилия Феодотова on 31.01.2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLavel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = bmiValue
        adviceLavel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
