//
//  VersesListView.swift
//  Quran
//
//  Created by Hidayat Abisena on 28/12/22.
//

import SwiftUI

struct VersesListView: View {
    // MARK: - PROPERTIES
    let verses: Verses
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(verses.imageNumber)
                .resizable()
                .scaledToFill()
                .frame(width: 36, height: 36)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(verses.surah)
                    .font(.custom("Poppins", size: 16).weight(.medium))
                    .foregroundColor(.white)
                
                HStack {
                    Text(verses.ayat.uppercased())
                    Text("·")
                    Text("\(verses.verses) verses".uppercased())
                }
                .font(.custom("Poppins", size: 12))
                .foregroundColor(Color("BodyDark"))
                
            } //: VSTACK
            
            Spacer()
            
            Image(verses.image)
                .resizable()
                .scaledToFill()
                .frame(width: 64, height: 35)
            
        } //: HSTACK
        .padding()
    }
}

// MARK: - PREVIEW
struct VersesListView_Previews: PreviewProvider {
    static let verses: [Verses] = Bundle.main.decode("verses.json")
    
    static var previews: some View {
        VersesListView(verses: verses[1])
            .preferredColorScheme(.dark)
    }
}
