//
//  MainView.swift
//  Quran
//
//  Created by Hidayat Abisena on 26/12/22.
//

import SwiftUI

struct MainView: View {
    // MARK: - PROPERTIES
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    @State private var tabSelection: Int = 0
    
    // MARK: - BODY
    var body: some View {
        TabView(selection: $tabSelection) {
            HomeView()
                .tabItem {
                    Label("Home", image: tabSelection == 0 ? "home_active" : "home")
                }
                .tag(0)
            
            ComingSoonPageView()
                .tabItem {
                    Label("Translate", image: tabSelection == 1 ? "translate_active" : "translate")
                }
                .tag(1)
            
            ComingSoonPageView()
                .tabItem {
                    Label("Pray", image: tabSelection == 2 ? "shalat_active" : "shalat")
                }
                .tag(2)
            
            ComingSoonPageView()
                .tabItem {
                    Label("Dua", image: tabSelection == 3 ? "dua_active" : "dua")
                }
                .tag(3)
                .badge("New")
            
            ComingSoonPageView()
                .tabItem {
                    Label("Markah", image: tabSelection == 4 ? "markah_active" : "markah")
                }
                .tag(4)
                .badge(3)
        }
        .preferredColorScheme(.dark)
    }
}

// MARK: - PREVIEW
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
