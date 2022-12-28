//
//  SurahDetailView.swift
//  Quran
//
//  Created by Hidayat Abisena on 28/12/22.
//

import SwiftUI

struct SurahDetailView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var surah: Surah
    
    // MARK: - BODY
    var body: some View {
        let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        let window = windowScene?.windows.first
        
        ZStack {
            VStack(alignment: .leading, spacing: 24) {
                NavigationBarDetailView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, window?.safeAreaInsets.top ?? 15)
                    .background(Color("MainBgDark"))
                    .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                ScrollView {
                    Image("Card")
                        .resizable()
                        .scaledToFit()
                    
                    HStack {
                        Image("ayat1")
                        Spacer()
                        Image("share")
                        Image("play")
                        Image("markah-fill")
                    }
                    .padding(.all, 16)
                    .frame(width: 327, height: 47)
                    .background(Color("SurahBarDark"))
                    .cornerRadius(10)
                    
                    Image("fatihah1")
                        .padding([.top, .bottom], 16)
                    
                    HStack {
                        Image("ayat2")
                        Spacer()
                        Image("share")
                        Image("play")
                        Image("markah-fill")
                    }
                    .padding(.all, 16)
                    .frame(width: 327, height: 47)
                    .background(Color("SurahBarDark"))
                    .cornerRadius(10)
                    
                    Image("fatihah2")
                        .padding([.top, .bottom], 16)
                }
                
            } //: VSTACK
            .background(Color("MainBgDark"))
        } //: ZSTACK
        .ignoresSafeArea(.all, edges: .top)
    }
}

// MARK: - PREVIEW
struct SurahDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SurahDetailView()
            .environmentObject(Surah())
    }
}
