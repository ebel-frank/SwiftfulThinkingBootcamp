//
//  ContextMenuBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Frank Ebeledike on 04/04/2025.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    @State var bgColor: Color = .blue
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding()
        .background(bgColor)
        .contextMenu {
            Button {
                bgColor = .yellow
            } label: {
                Label("Like", systemImage: "flame.fill")

            }
            
            Button {
                bgColor = .green
            } label: {
                Text("Share")

            }
            
            Button {
                bgColor = .red
            } label: {
                HStack {
                    Image(systemName: "flame")
                    Text("Report")
                }

            }
        }
        .cornerRadius(30)
    }
}

#Preview {
    ContextMenuBootcamp()
}
