//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var priceBrain = PriceBrain()

    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        switch sender {
        case zeroPctButton:
            zeroPctButton.isSelected = true
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
            priceBrain.selectTipPercent(tipPercent: 0.0)
        case tenPctButton:
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = true
            twentyPctButton.isSelected = false
            priceBrain.selectTipPercent(tipPercent: 0.1)
        case twentyPctButton:
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = true
            priceBrain.selectTipPercent(tipPercent: 0.2)
        default:
            print("something wrong !")
        }
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        priceBrain.selectPeople(people: Int(sender.value))
        splitNumberLabel.text = "\(priceBrain.getPeople())"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let totalPrice = Float(billTextField.text!) ?? 0.0
        priceBrain.selectTotalPrice(totalPrice: totalPrice)
        priceBrain.calculatePayPerPerson()
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let resultViewController = segue.destination as! ResultViewController
            resultViewController.settingsText = "Split between \(priceBrain.getPeople()) people, with \(priceBrain.getTipPercent() * 100)% tip"
            resultViewController.totalPrice = priceBrain.getPayPerPerson()
        }
    }
}

