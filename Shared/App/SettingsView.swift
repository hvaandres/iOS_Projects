//
//  SettingsView.swift
//  Planets (iOS)
//
//  Created by Andres Haro on 10/6/21.
//

import SwiftUI

struct SettingsView: View {
  // Properties
  
  @Environment(\.presentationMode) var presentationMode
  @AppStorage("isOnboarding") var isOnboarding: Bool = false
  
  // Body

  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(spacing: 20) {
          // Section 1
          
          GroupBox(
            label:
              SettingsLabelView(labelText: "Planets", labelImage: "info.circle")
          ) {
            Divider().padding(.vertical, 4)
            
            HStack(alignment: .center, spacing: 10) {
              Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .cornerRadius(9)
              
              Text("Planets are part of our universe, and you should know at least the most commons planets to make sure, you can share this information with your friends...!")
                .font(.footnote)
            }
          }
          
          // Section 2
          
          GroupBox(
            label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
          ) {
            Divider().padding(.vertical, 4)
            
            Text("If you would like to restart the application, you will have to toggle the switch from this box. In this way, you will start from the onboarding and you will get to the welcome screen..!")
              .padding(.vertical, 8)
              .frame(minHeight: 60)
              .layoutPriority(1)
              .font(.footnote)
              .multilineTextAlignment(.leading)
            
            Toggle(isOn: $isOnboarding) {
              if isOnboarding {
                Text("Restarted".uppercased())
                  .fontWeight(.bold)
                  .foregroundColor(Color.green)
              } else {
                Text("Restart".uppercased())
                  .fontWeight(.bold)
                  .foregroundColor(Color.secondary)
              }
            }
            .padding()
            .background(
              Color(UIColor.tertiarySystemBackground)
                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
            )
          }
          
          // Section 3
          
          GroupBox(
            label:
            SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
          ) {
            SettingsRowView(name: "Developer", content: "Andres Haro")
            SettingsRowView(name: "Designer", content: "Andres Haro")
            SettingsRowView(name: "Compatibility", content: "iOS 15")
            SettingsRowView(name: "Website", linkLabel: "My Portfolio", linkDestination: "aharo.netifly.app")
            SettingsRowView(name: "Twitter", linkLabel: "@madebyuxdev", linkDestination: "twitter.com/madebyuxdev")
            SettingsRowView(name: "SwiftUI", content: "3.0")
            SettingsRowView(name: "Version", content: "2.0")
          }
          
        } //: VStack
        .navigationBarTitle(Text("Settings"), displayMode: .large)
        .navigationBarItems(
          trailing:
            Button(action: {
              presentationMode.wrappedValue.dismiss()
            }) {
              Image(systemName: "xmark")
            }
        )
        .padding()
      } //: Scroll
    } //: Navigation
  }
}

// Preview

struct SettingsView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsView()
      .preferredColorScheme(.dark)
      .previewDevice("iPhone 13 Pro")
  }
}
