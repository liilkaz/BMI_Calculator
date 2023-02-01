//
//  ViewController.swift
//  MyBMICalculator
//
//  Created by Лилия Феодотова on 31.01.2023.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBOutlet weak var heightValue: UISlider!
    
    @IBOutlet weak var weightValue: UISlider!
    
    @IBOutlet weak var height: UILabel!
    @IBAction func heightSlider(_ sender: UISlider) {
        let value = String(format: "%.2f", sender.value)
        height.text = "\(value)m"
    }
    
    @IBOutlet weak var weight: UILabel!
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let value = Int(sender.value)
        weight.text = "\(value)Kg"
    }
    
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightValue.value
        let weight = weightValue.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
        
    }
    
    
}

