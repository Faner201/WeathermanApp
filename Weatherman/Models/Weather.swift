//
//  Weather.swift
//  Weatherman
//
//  Created by Илья Обухов on 15.01.2023.
//

import Foundation

struct Weather: Codable, Identifiable {
    var dt: Int
    var temp: Double
    var feelsLike: Double
    var pressure: Int
    var humidity: Int
    var dewPoint: Double
    var clouds: Int
    var windSpeed: Double
    var widDeg: Int
    var weather: [WeatherDetail]
    
    enum CodinKey: String {
        case dt
        case temp
        case feels_like
        case pressure
        case humidity
        case dew_point
        case clouds
        case wind_speed
        case win_deg
        case weather
    }
    
    init() {
        dt = 0
        temp = 0.0
        feelsLike = 0.0
        pressure = 0
        humidity = 0
        dewPoint = 0.0
        clouds = 0
        windSpeed = 0
        widDeg = 0
        weather = []
    }
}

extension Weather {
    var id: UUID {
        return UUID()
    }
}
