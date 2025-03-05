//
//  ConditionalBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Frank Ebeledike on 29/01/2025.
//

import SwiftUI

struct ConditionalBootcamp: View {
    @State var showCircle = false
    @State var showRect = false

    @State var isLoading: Bool = false
    @State var changeColor: Bool = false

    var body: some View {
        VStack {
            //            Button("Circle Button \(showCircle.description)") {
            //                showCircle.toggle()
            //            }
            //            Button("Rectangle Button \(showRect.description)") {
            //                showRect.toggle()
            //            }
            //
            //            if showCircle {
            //                Circle()
            //                    .frame(width: 100, height: 100)
            //            }
            //            if showRect {
            //                Rectangle()
            //                    .frame(width: 100, height: 100)
            //            }

            Button("IS Loading \(isLoading)") {
                isLoading.toggle()
            }

            if isLoading {
                ProgressView()
            } else {
                Text("Data has arrived")
            }
            
            
            Button("Change color \(changeColor)") {
                changeColor.toggle()
            }
            
            RoundedRectangle(cornerRadius: 10)
                .fill(changeColor ? .red : .blue)
                .frame(width: 200, height: 200)

            
            Spacer()
        }
    }
}

#Preview {
    ConditionalBootcamp()
}
