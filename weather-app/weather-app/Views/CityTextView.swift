//
//  CityTextView.swift
//  weather-app
//
//  Created by Mateus Malaquias (Contractor) on 17/09/22.
//

import SwiftUI

struct CityTextView: View {
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding()
    }
}

#if DEBUG
struct CityTextView_Previews: PreviewProvider {
    static var previews: some View {
        CityTextView(cityName: "São Paulo, BR")
            .background(Color.orange)
    }
}
#endif
