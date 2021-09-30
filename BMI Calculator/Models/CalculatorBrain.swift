//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Ahmed Sayed on 21/09/2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {

    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)

        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor.red)
        }
    }
    
    func getBMIValue() -> String {
        let bmiValue = String(format: "%.1f", bmi?.value ?? 0.0)   //if bmi nil, set it to 0.0
        return bmiValue
    }
    
    func getAdvice() -> String {
        let bmiAdvice = bmi?.advice ?? ""
        return bmiAdvice
    }
    
    func getColor() -> UIColor {
        let bmiColor = bmi?.color ?? UIColor.green
        return bmiColor
    }
}
