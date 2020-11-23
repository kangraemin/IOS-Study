//
//  PriceBrain.swift
//  Tipsy
//
//  Created by 강래민 on 2020/11/24.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct PriceBrain {
    var totalPrice: Float = 0.0
    var tipPercent:Float = 0.1
    var people:Int = 2
    var needToPayPerPerson:Float = 0.0
    
    mutating func selectTipPercent(tipPercent: Float) {
        self.tipPercent = tipPercent
    }
    
    mutating func selectPeople(people: Int) {
        self.people = people
    }
    
    mutating func selectTotalPrice(totalPrice: Float) {
        self.totalPrice = totalPrice
    }
    
    func getPeople() -> Int {
        return people
    }
    
    func getTipPercent() -> Float {
        return tipPercent
    }
    
    mutating func calculatePayPerPerson() {
        needToPayPerPerson = totalPrice * (1 + tipPercent) / Float(people)
    }
    
    func getPayPerPerson() -> Float {
        return needToPayPerPerson
    }
}
