//
//  OnboardingView.swift
//  Quran
//
//  Created by Hidayat Abisena on 27/12/22.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    @State private var isAnimating: Bool = false
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            Color("MainBgDark")
            
            // Title Header
            VStack(spacing: 8) {
                Text("Quran App")
                    .font(.custom("Poppins", size: 28).weight(.bold))
                
                Text("Learn Quran and\n Recite once everyday")
                    .font(.custom("Poppins", size: 18).weight(.regular))
                    .foregroundColor(Color("BodyDark"))
                    .multilineTextAlignment(.center)
                    .opacity(isAnimating ? 1 : 0)
                    .animation(.easeOut(duration: 1), value: isAnimating)
                
                // Image SplashScreen
                ZStack {
                    Image("SplashImage")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 314, height: 450)
                        .clipShape(RoundedRectangle(cornerRadius: 40, style: .continuous))
                        .offset(y: isAnimating ? 0 : -40)
                        .animation(.easeOut(duration: 1), value: isAnimating)
                    
                    Button {
                        withAnimation {
                            
                        }
                        print("Button Get Started tapped")
                    } label: {
                        Text("Get Started")
                            .font(.custom("Poppins", size: 18).weight(.semibold))
                            .frame(width: 185, height: 60)
                            .foregroundColor(Color("RegularDark"))
                            .background(Color("PeachDark"))
                            .cornerRadius(30)
                            .offset(y: 225)
                            .opacity(isAnimating ? 1 : 0)
                            .animation(.easeOut(duration: 1).delay(0.5), value: isAnimating)
                    }

                    
                } //: ZSTACK
                .padding(.top, 50)
                
            } //: VSTACK
            .onAppear {
                isAnimating.toggle()
            }
            .foregroundColor(.white)
            
        } //: ZSTACK
        .ignoresSafeArea()
    }
}

// MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
