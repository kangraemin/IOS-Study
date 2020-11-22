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
        return String(format: "%.1f", bmi)
    }
}
