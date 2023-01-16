//
//  HourlyWeatherView.swift
//  Weatherman
//
//  Created by Илья Обухов on 16.01.2023.
//

import SwiftUI

struct HourlyWeatherView: View {
    @ObservedObject var cityVM: CityViewViewModel
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(cityVM.weather.hourly) {
                    weather in
                    let icon = cityVM.getWeatherIcon(icon: weather.weather.count > 0 ?
                                                     weather.weather[0].icon : "sun.max.fill")
                    let hour = cityVM.getTime(timestmap: weather.dt)
                    let temp = cityVM.getTemp(temp: weather.temp)
                }
            }
        }
    }
        
        private func getHourlyView(hour: String, image: Image, temp: String) {
            VStack(spacing: 20) {
                Text(hour)
                image
                    .foregroundColor(.yellow)
                Text(temp)
            }
            .foregroundColor(.white)
            .padding()
            .background(RoundedRectangle(cornerRadius: 5).fill(LinearGradient(gradient: Gradient(colors: [Color("colorSecond"), Color("colorFirst")]), startPoint: .topLeading, endPoint: .bottomTrailing)))
            .shadow(color: Color.white.opacity(0.1), radius: 2, x: -2, y: -2)
            .shadow(color: Color.black.opacity(0.2), radius: 2, x: 2, y: 2)
        }
}

struct HourlyWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
