//
//  Api.swift
//  Weatherman
//
//  Created by Илья Обухов on 15.01.2023.
//

import Foundation


struct Api {
    static let key = "f0d7c06e2b669dbbe6e1583213c4acc0"
}

extension Api {
    static let baseURL = "https://api.openweathermap.org/data/2.5/"
    
    static func getURL(lat: Double, lon: Double) -> String {
        return "\(baseURL)onecall?lat=\(lat)&lon=\(lon)&exclude=minutely&appid=\(key)&units=imperial"
    }
}
