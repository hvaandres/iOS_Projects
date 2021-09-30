//
//  PlanetModel.swift
//  Planets (iOS)
//
//  Created by Andres Haro on 9/30/21.
//

import SwiftUI

// PlanetDataModel

struct Planet: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var information: [String]
}
