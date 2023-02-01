//
//  CalculatorBrain.swift
//  MyBMICalculator
//
//  Created by Лилия Феодотова on 01.02.2023.
//

import UIKit

struct CalculatorBrain{
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight/pow(height, 2)
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor(red: 0.38, green: 0.60, blue: 0.99, alpha: 1.00))
        } else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor(red: 0.47, green: 0.90, blue: 0.44, alpha: 1.00))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor(red: 0.99, green: 0.38, blue: 0.51, alpha: 1.00))
        }
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? .white
    }
}
