//
//  IntroView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Frank Ebeledike on 30/04/2025.
//

import SwiftUI

struct IntroView: View {
    @AppStorage("signed_in") var isSignedIn: Bool = false
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.purple, .blue]), center: .topLeading, startRadius: 5, endRadius: UIScreen.main.bounds.height)
                .ignoresSafeArea()
            
            if isSignedIn {
                ProfileView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
            } else {
                OnboardingView()
                    .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))
            }
        }
    }
}

#Preview {
    IntroView()
}
