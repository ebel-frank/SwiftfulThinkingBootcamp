//
//  PopupsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Frank Ebeledike on 11/02/2025.
//

// Sheet
// Animation
// Transition

import SwiftUI

struct PopupsBootcamp: View {
    @State var showNewScreen = false
    var body: some View {
        ZStack {
            VStack {
                Button("Button") {
                    showNewScreen.toggle()
                }.font(.largeTitle)
                Spacer()
            }
            // Method 1 - Using Sheet
            //        .sheet(isPresented: $showNewScreen) {
            //            NewScreen()
            //        }

            // Method 2 - Using Transition Animation
            //            ZStack {
            //                if (showNewScreen) {
            //                    NewScreen(showNewScreen: $showNewScreen)
            //                        .transition(.move(edge: .bottom))
            //                        .animation(.spring())
            //                }
            //            }.zIndex(2.0)

            // Method  - Using Animation OFfset
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 20)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
        }

    }
}

struct NewScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool

    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .edgesIgnoringSafeArea(.all)

            Button {
                //                presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
            }
        }
    }
}

#Preview {
    PopupsBootcamp()
    //    NewScreen()
}
