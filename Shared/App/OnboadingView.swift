//
//  OnboadingView.swift
//  Planets (iOS)
//
//  Created by Andres Haro on 9/28/21.
//

import SwiftUI

struct OnboadingView: View {
    // Porperties
    
    var planets: [Planet] = planetsData
    
    // Body
    var body: some View {
        TabView{
            ForEach(planets[0...5]){ item in
                PlanetCardView(planet: item)
                
        } // Loop
    } // Tab
        
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// Preview

struct OnboadingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboadingView(planets: planetsData)
    }
}
