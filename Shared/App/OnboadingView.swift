//
//  OnboadingView.swift
//  Planets (iOS)
//
//  Created by Andres Haro on 9/28/21.
//

import SwiftUI

struct OnboardingView: View {
  // PROPERTIES
  
  var planets: [Planet] = planetsData
  
  // BODY
  
  var body: some View {
    TabView {
      ForEach(planets[0...5]) { item in
        PlanetCardView(planet: item)
      } // LOOP
    } // TAB
    .tabViewStyle(PageTabViewStyle())
    .padding(.vertical, 20)
  }
}

// PREVIEW

struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView(planets: planetsData)
      .previewDevice("iPhone 11 Pro")
  }
}
