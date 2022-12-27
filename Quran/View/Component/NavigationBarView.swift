//
//  NavigationBarView.swift
//  Quran
//
//  Created by Hidayat Abisena on 27/12/22.
//

import SwiftUI

struct NavigationBarView: View {
    // MARK: - PROPERTIES
    @State private var isAnimated: Bool = false
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image("menu")
                    .font(.title)
            }
            
            Spacer()
            
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 111, height: 30, alignment: .center)
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimated.toggle()
                    }
                }
            
            Spacer()
            
            Image("magnifying-glass")

            
        } //: HSTACK
    }
}

// MARK: - PREVIEW
struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
            .preferredColorScheme(.dark)
    }
}
