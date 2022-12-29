//
//  NavigationBarDetailView.swift
//  Quran
//
//  Created by Hidayat Abisena on 28/12/22.
//

import SwiftUI

struct NavigationBarDetailView: View {
    // MARK: - PROPERTIES
    //    @EnvironmentObject var surah: Surah
    @StateObject var surah = Surah()
    @Environment(\.dismiss) var dismiss
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Button {
                dismiss()
            } label: {
                Image("backbutton")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                
                Text("Surah".uppercased())
                    .font(.custom("Poppins", size: 20).weight(.bold))
                    .offset(x: 24)
                
                Spacer()
                
                Image("magnifying-glass")
                    
            }

        }
        .environmentObject(Surah())
    }
}

// MARK: - PREVIEW
struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Surah())
            .preferredColorScheme(.dark)
    }
}
