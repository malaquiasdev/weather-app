//
//  ContentView.swift
//  weather-app
//
//  Created by Mateus Malaquias (Contractor) on 17/09/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack{
            BackgroundView(isNight: $isNight)
            
            VStack{
                CityTextView(cityName: "São Paulo, BR")
                FeaturedDayView(imageName: isNight ? "cloud.moon.fill" : "cloud.sun.fill", temperature: 18)
                
                HStack(spacing: 12) {
                    DayView(dayOfWeek: "Sat", imageName: isNight ? "cloud.moon.fill" : "cloud.sun.fill", temperature: 18)
                    DayView(dayOfWeek: "Sun", imageName: isNight ? "moon.stars.fill" : "sun.max.fill", temperature: 17)
                    DayView(dayOfWeek: "Mon", imageName: isNight ? "cloud.moon.fill" : "cloud.sun.fill", temperature: 10)
                    DayView(dayOfWeek: "Tue", imageName: isNight ? "cloud.moon.rain.fill" : "cloud.rain.fill", temperature: 14)
                    DayView(dayOfWeek: "Wed", imageName: isNight ? "cloud.moon.rain.fill" : "cloud.rain.fill", temperature: 15)
                }
                
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    ChangeWeekButtonLabelView(title: "Change Day Time", foregroundColor: .blue, background: .white)
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
