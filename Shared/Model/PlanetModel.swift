//
//  PlanetModel.swift
//  Planets (iOS)
//
//  Created by Andres Haro on 9/29/21.
//

import SwiftUI

// Planets Data Model

struct Planet: Identifiable {
    var id =  UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColor: [Color]
    var description: String
    var information: [String]
}
