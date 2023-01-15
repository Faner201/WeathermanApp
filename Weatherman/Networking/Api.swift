//
//  Api.swift
//  Weatherman
//
//  Created by Илья Обухов on 15.01.2023.
//

import Foundation


struct Api {
    static let key = "a3e389c848ef80fbef667c3668348e05"
}

extension Api {
    static let baseURL = "https://api.openweathermap.org/data/3.0/"
    
    static func getURL(lat: Double, lon: Double) -> String {
        return "\(baseURL)oncall?lat=\(lat)&lon=\(lon)&exclude=minutely&appid=\(key)&units=imperial"
    }
}
