
import SwiftUI

struct ContentView: View {
  // Properties
  
  @State private var isShowingSettings: Bool = false
  
  var planets: [Planet] = planetsData

  // Body

  var body: some View {
    NavigationView {
      List {
        ForEach(planets.shuffled()) { item in
          NavigationLink(destination: PlanetDetailView(planet: item)) {
            PlanetRowView(planet: item)
              .padding(.vertical, 4)
          }
        }
      }
      .navigationTitle("Planets")
      .navigationBarItems(
        trailing:
          Button(action: {
            isShowingSettings = true
          }) {
            Image(systemName: "slider.horizontal.3")
          } //: Button
          .sheet(isPresented: $isShowingSettings) {
            SettingsView()
          }
      )
    } //: Navigation
    .navigationViewStyle(StackNavigationViewStyle())
  }
}

// Preview

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(planets: planetsData)
      .previewDevice("iPhone 13 Pro")
  }
}
