//
//  PlanetRowView.swift
//  Planets (iOS)
//
//  Created by Andres Haro on 10/5/21.
//

import SwiftUI

struct PlanetRowView: View {
    
    // Properties
    
    var planet: Planet
    
    // Body
    
    var body: some View {
        HStack{
            
            Image(planet.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(gradient: Gradient(colors: planet.gradientColors), startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 5){
                Text(planet.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(planet.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            }
        } // HStack
    }
}
// Preview

struct PlanetRowView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetRowView(planet: planetsData[0])            .previewLayout(.sizeThatFits)
            .padding()
    }
}
