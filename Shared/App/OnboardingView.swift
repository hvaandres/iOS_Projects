import SwiftUI

struct OnboardingView: View {
  // Properties
  
  var planets: [Planet] = planetsData
  
  // Body
  
  var body: some View {
    TabView {
      ForEach(planets[0...5]) { item in
        PlanetCardView(planet: item)
      } //: Loop
    } //: Tab
    .tabViewStyle(PageTabViewStyle())
    .padding(.vertical, 20)
  }
}

// Preview

struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView(planets: planetsData)
      .previewDevice("iPhone 13 Pro")
  }
}
