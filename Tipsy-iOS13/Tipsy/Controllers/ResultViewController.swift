//
//  ResultViewController.swift
//  Tipsy
//
//  Created by 강래민 on 2020/11/23.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var totalPrice: Float?
    var settingsText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = "\(totalPrice!)"
        settingsLabel.text = settingsText
   }
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
