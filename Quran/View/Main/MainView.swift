//
//  MainView.swift
//  Quran
//
//  Created by Hidayat Abisena on 26/12/22.
//

import SwiftUI

struct MainView: View {
    // MARK: - PROPERTIES
    @State private var tabSelection: Int = 0
    
    // MARK: - BODY
    var body: some View {
        TabView(selection: $tabSelection) {
            Text("Home")
                .tabItem {
                    Label("Home", image: tabSelection == 0 ? "home_active" : "home")
                }
                .tag(0)
            
            Text("Translate")
                .tabItem {
                    Label("Translate", image: tabSelection == 1 ? "translate_active" : "translate")
                }
                .tag(1)
            
            Text("Pray")
                .tabItem {
                    Label("Pray", image: tabSelection == 2 ? "shalat_active" : "shalat")
                }
                .tag(2)
            
            Text("Dua")
                .tabItem {
                    Label("Dua", image: tabSelection == 3 ? "dua_active" : "dua")
                }
                .tag(3)
                .badge("New")
            
            Text("Markah")
                .tabItem {
                    Label("Markah", image: tabSelection == 4 ? "markah_active" : "markah")
                }
                .tag(4)
                .badge(3)
        }
    }
}

// MARK: - PREVIEW
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
