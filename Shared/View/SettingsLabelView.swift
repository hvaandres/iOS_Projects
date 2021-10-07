//
//  SettingsLabelView.swift
//  Planets (iOS)
//
//  Created by Andres Haro on 10/6/21.
//

import SwiftUI

struct SettingsLabelView: View {
  // Properties
  
  var labelText: String
  var labelImage: String

  // Body
  var body: some View {
    HStack {
      Text(labelText.uppercased()).fontWeight(.bold)
      Spacer()
      Image(systemName: labelImage)
    }
  }
}

// Preview

struct SettingsLabelView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsLabelView(labelText: "Planets", labelImage: "info.circle")
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
