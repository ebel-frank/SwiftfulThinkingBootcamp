//
//  SheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Frank Ebeledike on 02/02/2025.
//

import SwiftUI

struct SheetsBootcamp: View {
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)

            Button {
                showSheet.toggle()
            } label: {
                Text("Click me")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            }
        }
        .fullScreenCover(isPresented: $showSheet) {
            SecondScreen()
        }
//        .sheet(isPresented: $showSheet) {
//            SecondScreen()
//        }
    }
}

struct SecondScreen: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red.edgesIgnoringSafeArea(.all)

            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding(20)
            }
        }
    }
}

#Preview {
    SheetsBootcamp()
//    SecondScreen()
}
