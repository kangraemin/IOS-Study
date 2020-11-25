//
//  WeatherManager.swift
//  Clima
//
//  Created by 강래민 on 2020/11/25.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL = "http://api.openweathermap.org/data/2.5/weather?appid=d40b8dfc9355905ad25bc60eeb126b0c&units=metric"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        print(urlString)
    }
}
