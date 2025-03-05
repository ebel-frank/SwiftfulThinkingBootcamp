//
//  StateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Frank Ebeledike on 27/01/2025.
//

import SwiftUI

struct StateBootcamp: View {
    @State var backgroundColor: Color = .green
    @State var title: String = "My title"
    @State var count: Int = 0

    var body: some View {
        VStack(spacing: 20) {
            Text(title)
                .font(.title)
            Text("Count: \(count)")
                .font(.headline)
                .underline()
            ControlView(
                backgroundColor: $backgroundColor,
                title: $title, count: $count
            )
        }
        .foregroundColor(.white)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backgroundColor)

    }

    func pressMe() {
        backgroundColor = .yellow
        title = "Button 1 was Pressed OOHHH"
        count -= 1
    }
}

#Preview {
    StateBootcamp()
}

struct ControlView: View {
    @Binding var backgroundColor: Color
    @Binding var title: String
    @Binding var count: Int

    var body: some View {
        HStack(spacing: 20) {
            Button("Button 1") {
                backgroundColor = .red
                title = "Button 2 was Pressed"
                count += 1
            }

            Button {
//                pressMe()
            } label: {
                Text("PRESS ME")
                    .font(.headline)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
            }
        }
    }
}
