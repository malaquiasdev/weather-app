//
//  FeaturedDayView.swift
//  weather-app
//
//  Created by Mateus Malaquias (Contractor) on 17/09/22.
//

import SwiftUI

struct FeaturedDayView: View {
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 80, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}

struct FeaturedDayView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedDayView(imageName: "cloud.sun.fill", temperature: 18)
    }
}
