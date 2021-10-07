import SwiftUI

struct PlanetDetailView: View {
  // Properties
  
  var planet: Planet

  // Body
  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(alignment: .center, spacing: 20) {
          // Header
          PlanetHeaderView(planet: planet)
          
          VStack(alignment: .leading, spacing: 20) {
            // Title
            Text(planet.title)
              .font(.largeTitle)
              .fontWeight(.heavy)
              .foregroundColor(planet.gradientColors[1])
            
            // Headline
            Text(planet.headline)
              .font(.headline)
              .multilineTextAlignment(.leading)
            
            // Nutrients
            PlanetInformationView(planet: planet)
            
            // Subheadline
            Text("Learn more about \(planet.title)".uppercased())
              .fontWeight(.bold)
              .foregroundColor(planet.gradientColors[1])
            
            // Description
            Text(planet.description)
              .multilineTextAlignment(.leading)
            
            // Link
            SourceLinkView()
              .padding(.top, 10)
              .padding(.bottom, 40)
          } //: VStack
          .padding(.horizontal, 20)
          .frame(maxWidth: 640, alignment: .center)
        } //: VStack
        .navigationBarTitle(planet.title, displayMode: .inline)
        .navigationBarHidden(true)
      } //: Scroll
      .edgesIgnoringSafeArea(.top)
    } //: Navigation
    .navigationViewStyle(StackNavigationViewStyle())
  }
}

// Preview

struct PlanetDetailView_Previews: PreviewProvider {
  static var previews: some View {
      PlanetDetailView(planet: planetsData[0])
      .previewDevice("iPhone 13 Pro")
  }
}

