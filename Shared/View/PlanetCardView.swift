//
//  PlanetCardView.swift
//  Planets (iOS)
//
//  Created by Andres Haro on 9/28/21.
//

import SwiftUI

struct PlanetCardView: View {
  // Properties
  
  var planet: Planet
  
  @State private var isAnimating: Bool = false
  
  // Body
  
  var body: some View {
    ZStack {
      VStack(spacing: 20) {
        // Image
        Image(planet.image)
          .resizable()
          .scaledToFit()
          .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
          .scaleEffect(isAnimating ? 1.0 : 0.6)
        
        // Title
        Text(planet.title)
          .foregroundColor(Color.white)
          .font(.largeTitle)
          .fontWeight(.heavy)
          .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
        
        // Headline
        Text(planet.headline)
          .foregroundColor(Color.white)
          .multilineTextAlignment(.center)
          .padding(.horizontal, 16)
          .frame(maxWidth: 480)
        
        // Start
        StartButtonView()
      } // VStack
    } // Zstack
    .onAppear {
      withAnimation(.easeOut(duration: 0.5)) {
        isAnimating = true
      }
    }
    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
    .background(LinearGradient(gradient: Gradient(colors: planet.gradientColors), startPoint: .top, endPoint: .bottom))
    .cornerRadius(20)
    .padding(.horizontal, 20)
  }
}

// Preview

struct PlanetCardView_Previews: PreviewProvider {
  static var previews: some View {
    PlanetCardView(planet: planetsData[1])
      .previewLayout(.fixed(width: 320, height: 640))
  }
}
