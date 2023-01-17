//
//  DailyWeather.swift
//  Weatherman
//
//  Created by Илья Обухов on 15.01.2023.
//

import Foundation

struct DailyWeather: Identifiable, Codable {
    var dt: Int
    var temp: Temperature
    var weather: [WeatherDetail]
    
    enum CodingKey: String {
        case dt
        case temp
        case weather
    }
    
    init() {
        dt = 0
        temp = Temperature(min: 0.0, max: 0.0)
        weather = [WeatherDetail(main: "", description: "", icon: "")]
    }
}

extension DailyWeather {
    var id: UUID {
        return UUID()
    }
}
