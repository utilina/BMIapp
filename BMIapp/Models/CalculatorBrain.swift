//
//  CalculatorBrain.swift
//  BMIapp
//
//  Created by Анастасия Улитина on 02.11.2020.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        if bmiValue <= 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more icecream and pies!", color: #colorLiteral(red: 0.5969504513, green: 0.9780318689, blue: 1, alpha: 1))
        } else if bmiValue <= 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "You such a fat guy!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? "0.0")
    }
    
    func getBMILabel() -> String {
        return bmi?.advice ?? ""
    }
    
    func getBMIBackground() -> UIColor {
        return bmi?.color ?? .white
    }
    
}
