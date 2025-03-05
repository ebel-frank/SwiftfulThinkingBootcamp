//
//  StacksBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Frank Ebeledike on 25/01/2025.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "person")
                Spacer()
                Image(systemName: "gear")
            }.font(.title)
                .padding()
            Spacer()
            VStack(alignment: .leading) {
                Text("Hello, World!")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text("This is the description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge.")
            }
            .padding()
            .padding(.vertical)
            .background(
                Color.blue
                    .cornerRadius(10)
                    .shadow(color: .blue.opacity(0.3),radius: 10, x: 0, y: 10)
            ).padding()
        }
        
    }
}

#Preview {
    StacksBootcamp()
}
