//
//  PlanetInstructionsView.swift
//  Planets (iOS)
//
//  Created by Andres Haro on 10/6/21.
//

import SwiftUI

struct PlanetInformationView: View {
  // Properties
  
  var planet: Planet
  let information: [String] = ["Surface area", "Orbital Period", "Lenght of day", "DIstance from the Sun", "Radius", "Gravity"]

  // MARK: - BODY

  var body: some View {
    GroupBox() {
      DisclosureGroup("Planet's Information") {
        ForEach(0..<information.count, id: \.self) { item in
          Divider().padding(.vertical, 2)
          
          HStack {
            Group {
              Image(systemName: "info.circle")
              Text(information[item])
            }
            .foregroundColor(planet.gradientColors[1])
            .font(Font.system(.body).bold())
            
            Spacer(minLength: 25)
            
              Text(planet.information[item])
              .multilineTextAlignment(.trailing)
          }
        }
      }
    } //: BOX
  }
}

// MARK: - PREVIEW

struct FruitNutrientsView_Previews: PreviewProvider {
  static var previews: some View {
    PlanetInformationView(planet: planetsData[0])
          .preferredColorScheme(.dark)
          .previewLayout(.fixed(width: 375, height: 480))
          .padding()
      
  }
}
