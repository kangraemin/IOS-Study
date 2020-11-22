//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by 강래민 on 2020/11/22.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: Float?
    
    mutating func calculateBMI(weight: Float, height: Float) {
        bmi = weight / (height * height)
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
        return String(format: "%.1f", bmi ?? 0.0)
    }
}
