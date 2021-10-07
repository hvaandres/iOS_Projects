//
//  PlanetHeaderView.swift
//  Planets (iOS)
//
//  Created by Andres Haro on 10/6/21.
//

import SwiftUI

struct PlanetHeaderView: View {
    // Properties
    
    var planet: Planet
    
    @State private var isAnimatingImage: Bool = false //Animate
    // Body
    
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: planet.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(planet.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.5), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        }//ZStack
        .frame(height: 440)
        .onAppear(){
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

// Preview
struct PlanetHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetHeaderView(planet: planetsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
