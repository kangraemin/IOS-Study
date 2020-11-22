//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by 강래민 on 2020/11/22.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(weight: Float, height: Float) {
        let bmiValue = weight / (height * height)
        switch bmiValue {
        case 18.5..<24.9:
            bmi = BMI.init(value: bmiValue, advice: "Eat less pies !", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        case 24.9...:
            bmi = BMI.init(value: bmiValue, advice: "Fit as a fiddle !", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        default:
            bmi = BMI.init(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Something error"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    }
    
    func getBMIValue() -> String {
//        if bmi != nil {
//            return String(format: "%.1f", bmi!)
//        } else {
//            return "0.0"
//        }
//        if let safeBMI = bmi {
//            return String(format: "%.1f", safeBMI)
//        } else {
//            return "0.0"
//        }
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
}
