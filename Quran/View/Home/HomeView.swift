//
//  HomeView.swift
//  Quran
//
//  Created by Hidayat Abisena on 27/12/22.
//

import SwiftUI

struct HomeView: View {
    // MARK: - PROPERTIES
    @State private var select: Int = 0
    private var items = ["Surah", "Para", "Page", "Hijb"]
    let verses: [Verses] = Bundle.main.decode("verses.json")
    @State private var showingDetailSurah = false
    
    //    @EnvironmentObject var surah: Surah
    @StateObject var surah = Surah()
    
    // MARK: - BODY
    var body: some View {
        let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        let window = windowScene?.windows.first
        
        ZStack {
            if surah.showingSurah == false {
                VStack(alignment: .leading, spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, window?.safeAreaInsets.top ?? 15)
                        .background(Color("MainBgDark"))
                        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        greetingsCard
                        
                        // MARK: - SEGMENT MENU
                        VStack {
                            SegmentedControlView(items: items, selection: $select)
                                .padding(.vertical, 16)
                            
                            if select == 0 {
                                ForEach(verses) { verse in
                                    VersesListView(verses: verse)
                                        .padding(.horizontal, 16)
                                        .onTapGesture {
                                           // surah.showingSurah = true
                                            showingDetailSurah = true
                                        }
                                }
                            } else {
                                Text("Page title \"\(items[select])\"")
                                    .foregroundColor(.white)
                            }
                        }
                    }
                    
                } //: VSTACK
                .background(Color("MainBgDark"))
                .sheet(isPresented: $showingDetailSurah) {
                    SurahDetailView()
                }
            } else {
                SurahDetailView()
            }
            //.ignoresSafeArea(.all, edges: .all)
            
        } //: ZSTACK
        .environmentObject(Surah())
        .ignoresSafeArea(.all, edges: .top)
    }
}

// MARK: - EXTENSION
extension HomeView {
    private var greetingsCard: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Assalaamualaikum")
                .font(.custom("Poppins", size: 18).weight(.medium))
                .foregroundColor(Color("BodyDark"))
            
            Text("Tanvir Ahassan")
                .font(.custom("Poppins", size: 32).weight(.semibold))
                .foregroundColor(.white)
            
            Image("progress-ayat")
                .resizable()
                .scaledToFill()
                .padding(.top, 24)
        }
        .padding()
    }
}

// MARK: - PREVIEW
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(Surah())
    }
}

