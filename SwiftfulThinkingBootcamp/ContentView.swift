//
//  ContentView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Frank Ebeledike on 24/01/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, everyone!")
                .font(.title)
                .multilineTextAlignment(.trailing)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
