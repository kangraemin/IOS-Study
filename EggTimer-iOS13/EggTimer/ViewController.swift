//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]
    var timer: Timer?
    var count = 0
    
    @IBOutlet weak var remainingTimeLabel: UILabel!
    
    @IBAction func eggButtonClicked(_ sender: UIButton) {
        count = eggTimes[sender.currentTitle!]!
        endTimer()
        startTimer()
    }
    
    func startTimer() {
        if timer != nil {
            return
        }
        // Selector -> remanant from objective C
        // So, use @objc annotaion for update function
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(update), userInfo: nil, repeats: true)
        timer?.fire()
    }
    
    func endTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    @objc func update() {
        if(count > 0) {
            remainingTimeLabel.text = "\(count) seconds remains"
            count -= 1
        } else if (count == 0) {
            endTimer()
            remainingTimeLabel.text = "done !"
        }
    }
}
