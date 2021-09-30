//
//  OnboadingView.swift
//  Planets (iOS)
//
//  Created by Andres Haro on 9/28/21.
//

import SwiftUI

struct OnboadingView: View {
    // Porperties
    
    // Body
    var body: some View {
        TabView{
            ForEach(0..<5){ item in
        PlanetCardView()
        } // Loop
    } // Tab
        
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// Preview

struct OnboadingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboadingView()
    }
}
