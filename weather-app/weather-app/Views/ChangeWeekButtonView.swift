//
//  ChangeWeekButtonView.swift
//  weather-app
//
//  Created by Mateus Malaquias (Contractor) on 17/09/22.
//

import SwiftUI

struct ChangeWeekButtonLabelView: View {
    var title: String
    var foregroundColor: Color
    var background: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(background)
            .foregroundColor(foregroundColor)
            .font(.system(size: 20, weight: .medium, design: .default))
            .cornerRadius(30.0)
    }
}

struct ChangeWeekButtonLabelView_Previews: PreviewProvider {
    static var previews: some View {
        ChangeWeekButtonLabelView(title: "Change Week", foregroundColor: .blue, background: .white)
    }
}
