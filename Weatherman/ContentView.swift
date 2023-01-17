//
//  ContentView.swift
//  Weatherman
//
//  Created by Илья Обухов on 15.01.2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var cityVM = CityViewViewModel()
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(spacing: 0) {
//                MenuHeaderView(cityVM: cityVM).padding()
                ScrollView(showsIndicators: false) {
                    CityView(cityVM: cityVM)
                }.padding(.top, 10)
            }.padding(.top, 30)
        }.background(LinearGradient(gradient: Gradient(colors: [Color("colorSecond"), Color("colorFirst")]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
