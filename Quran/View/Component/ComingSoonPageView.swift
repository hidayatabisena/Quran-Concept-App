//
//  ComingSoonPageView.swift
//  Quran
//
//  Created by Hidayat Abisena on 28/12/22.
//

import SwiftUI

struct ComingSoonPageView: View {
    // MARK: - PROPERTIES
    @State private var isAnimated: Bool = false
    
    // MARK: - BODY
    var body: some View {
        let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        let window = windowScene?.windows.first
        
        VStack(alignment: .leading, spacing: 0) {
            NavigationBarView()
                .padding(.horizontal, 15)
                .padding(.bottom)
                .padding(.top, window?.safeAreaInsets.top ?? 15)
                .background(Color("MainBgDark"))
                .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
            
            ScrollView(.vertical, showsIndicators: false) {
                ZStack {
                    Image(uiImage: UIImage(named: "comingsoon")!)
                        .resizable()
                        .scaledToFill()
                    
                    VStack(alignment: .leading, spacing: 30) {
                        Text("Coming soon...")
                            .foregroundColor(.white)
                            .font(.custom("Poppins", size: 26).weight(.bold))
                        
                        Text("It seems you are in the middle of \nthe ocean")
                            .font(.custom("Poppins", size: 20).weight(.regular))
                            .foregroundColor(.white)
                            .opacity(0.7)
                        
                        Button {
                            
                        } label: {
                            Text("Back to Home".uppercased())
                                .font(.custom("Poppins", size: 16).weight(.regular))
                                .foregroundColor(Color("PeachDark"))
                                .padding(.vertical)
                                .padding(.horizontal, 30)
                                .background(Color("RegularDark"))
                                .cornerRadius(30)
                                
                        }

                    } //: VSTACK
                    .padding(.bottom, UIScreen.main.bounds.height * 0.1)
                    .opacity(isAnimated ? 1 : 0)
                    .offset(y: isAnimated ? 65 : -25)
                    .onAppear {
                        withAnimation(.easeOut(duration: 0.5)) {
                            isAnimated.toggle()
                        }
                    }
                    
                } //: ZSTACK
                
            } //: SCROLLVIEW
            
        } //: VSTACK
        .ignoresSafeArea(.all, edges: .top)
        .background(Color("MainBgDark"))
    }
}

// MARK: - PREVIEW
struct ComingSoonPageView_Previews: PreviewProvider {
    static var previews: some View {
        ComingSoonPageView()
    }
}
