//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    

    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]
    var timer: Timer?
    var totalCount = 0
    var count = 0
    var hardNess: String = ""
    var player: AVAudioPlayer?
    
    @IBOutlet weak var remainingTimeLabel: UILabel!
    @IBOutlet weak var yorkProgressbar: UIProgressView!
    
    @IBAction func eggButtonClicked(_ sender: UIButton) {
        hardNess = sender.currentTitle!
        count = eggTimes[sender.currentTitle!]!
        totalCount = count
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
            let progress = Float(totalCount - count) / Float(totalCount)
            yorkProgressbar.setProgress(progress, animated: true)
            remainingTimeLabel.text = hardNess + " Egg\n \(count) seconds remains"
            count -= 1
        } else if (count == 0) {
            playSound()
            endTimer()
            yorkProgressbar.setProgress(1.0, animated: true)
            remainingTimeLabel.text = "done !"
        }
    }
    
    func playSound() {
        guard let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3") else { return }

        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)

            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

            /* iOS 10 and earlier require the following line:
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */

            guard let player = player else { return }

            player.play()

        } catch let error {
            print(error.localizedDescription)
        }
    }
}
