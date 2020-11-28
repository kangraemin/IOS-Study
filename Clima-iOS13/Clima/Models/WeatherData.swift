//
//  WeatherData.swift
//  Clima
//
//  Created by 강래민 on 2020/11/26.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

// Decodable -> the weather data turned into a type that can decode itself from an external representation namely the JSON representation
// JSON Decode할때 필요한 protocol 
struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let description: String
    let id: Int
}

/*
// 20201126000616
// http://api.openweathermap.org/data/2.5/weather?appid=d40b8dfc9355905ad25bc60eeb126b0c&q=London&units=metric

{
  "coord": {
    "lon": -0.13,
    "lat": 51.51
  },
  "weather": [
    {
      "id": 803,
      "main": "Clouds",
      "description": "broken clouds",
      "icon": "04d"
    }
  ],
  "base": "stations",
  "main": {
    "temp": 13.27,
    "feels_like": 10.52,
    "temp_min": 12.22,
    "temp_max": 14,
    "pressure": 1012,
    "humidity": 82
  },
  "visibility": 10000,
  "wind": {
    "speed": 4.1,
    "deg": 200
  },
  "clouds": {
    "all": 75
  },
  "dt": 1606312829,
  "sys": {
    "type": 1,
    "id": 1414,
    "country": "GB",
    "sunrise": 1606289744,
    "sunset": 1606319994
  },
  "timezone": 0,
  "id": 2643743,
  "name": "London",
  "cod": 200
}
*/
