//
//  BackgroundView.swift
//  weather-app
//
//  Created by Mateus Malaquias (Contractor) on 17/09/22.
//

import SwiftUI

struct BackgroundView: View {
    
    @Binding var isNight: Bool
        
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : Color.blue, isNight ? .gray : Color("lightBlue")]),
                         startPoint: .topLeading,
                         endPoint: .bottomTrailing)
          .edgesIgnoringSafeArea(.all)
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BackgroundView(isNight: .constant(false))
            BackgroundView(isNight: .constant(true))

        }
    }
}
