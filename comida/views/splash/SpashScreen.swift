//
//  SpashScreen.swift
//  comida
//
//  Created by Abdallah on 08/09/2025.
//

import SwiftUI


struct SpashView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack{
                Image("comida_app_icon")
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
            .background(Color.primaryButton)
        }
    }
}



#Preview {
    SpashView()
}
