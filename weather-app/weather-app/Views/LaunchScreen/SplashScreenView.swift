//
//  SplashScreenView.swift
//  weather-app
//
//  Created by Mateus Malaquias (Contractor) on 19/09/22.
//

import SwiftUI

struct SplashScreenView: View {
    @State var isActive: Bool = false
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.blue, Color("lightBlue")]),
                                 startPoint: .topLeading,
                                 endPoint: .bottomTrailing)
                  .edgesIgnoringSafeArea(.all)
                VStack {
                    Image("splash")
                        .resizable()
                        .frame(width: 300, height: 300)
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
