//
//  PlanetsApp.swift
//  Shared
//
//  Created by Andres Haro on 9/20/21.
//

import SwiftUI

@main
struct PlanetsApp: App {
  @AppStorage("isOnboarding") var isOnboarding: Bool = true
  
  var body: some Scene {
    WindowGroup {
      if isOnboarding {
        OnboardingView()
      } else {
        ContentView()
      }
    }
  }
}
