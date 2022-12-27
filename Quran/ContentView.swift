//
//  ContentView.swift
//  Quran
//
//  Created by Hidayat Abisena on 26/12/22.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
          if isOnboardingViewActive {
            OnboardingView()
          } else {
            MainView()
          }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
