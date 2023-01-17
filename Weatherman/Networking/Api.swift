//
//  Api.swift
//  Weatherman
//
//  Created by Илья Обухов on 15.01.2023.
//

import Foundation


struct Api {
    static let key = "16515d526654f6634467483cb15af609"
}

extension Api {
    static let baseURL = "https://api.openweathermap.org/data/3.0/"
    
    static func getURL(lat: Double, lon: Double) -> String {
        return "\(baseURL)onecall?lat=\(lat)&lon=\(lon)&exclude=minutely&appid=\(key)&units=metric"
    }
}
