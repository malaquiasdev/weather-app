//
//  DayView.swift
//  weather-app
//
//  Created by Mateus Malaquias (Contractor) on 17/09/22.
//

import SwiftUI

struct DayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundColor(.white)
                .padding()
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}

struct DayView_Previews: PreviewProvider {
    static var previews: some View {
        DayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 18)
    }
}
