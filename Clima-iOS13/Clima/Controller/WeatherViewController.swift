//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    
    var weatherManager = WeatherManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        searchTextField.delegate = self
    }

    @IBAction func searchPressed(_ sender: UIButton) {
        // it is different with placeholder
        searchTextField.endEditing(true)
        print(searchTextField.text!)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // 코드를 통해 return 눌렀을때 동작을 커스텀 할 수 있으나, 이대로라면 키보드가 사라지지 않음
        // 따라서 searchTextField.endEditing(true)가 필요
        // deletgate를 통해 viewcontroller가 UITextField를 위임 받았기 때문에, textField의 함수 호출을 사용 할 수 있다.
        // textField가 해당 viewcontroller에 여러개가 있을 경우, 버튼을 하나의 UIButton IBAAction으로 묶어 놓은것과 같이, textField값에 이에 맞는 textField 데이터가 입력되어 들어온다.
        searchTextField.endEditing(true)
        // print(searchTextField.text!)
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        // 유저가 입력을 종료 해도 되는가 ?
        if textField.text != "" {
            return true
        } else {
            textField.placeholder = "Type something here"
            return false
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        // endEditing(true) 가 불리거나, 키보드가 내려갔을 때 불림
        // searchTextField.text = ""
        // Use searchTextField.text to get the weather for that city.
        if let city = searchTextField.text {
            weatherManager.fetchWeather(cityName: city)
        }
    }
}

