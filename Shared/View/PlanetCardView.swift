//
//  PlanetCardView.swift
//  Planets (iOS)
//
//  Created by Andres Haro on 9/28/21.
//

import SwiftUI

struct PlanetCardView: View {
    // Properties
    
    @State private var isAnimating: Bool = false
    
    // Body
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // Planet: Image
                Image("earth")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 0, x: 6, y: 8)
                // Planet: Title
                Text("Earth")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                // Planet: HeadLine
                
                Text("Earth is our home planet. Scientists believe Earth and its moon formed around the same time as the rest of the solar system.")
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                // Planet: Button
                
                StartButtonView()
                
            } //VSTACK
        } //ZSTACK
        
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)){
                isAnimating = true
            }
        }
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorEarth"), Color("ColorVenus")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

// Preview

struct PlanetCardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PlanetCardView()
                .previewDevice("iPhone 12 Pro Max")
                .previewLayout(.fixed(width: 320, height: 640))
        }
    }
}
