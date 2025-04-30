//
//  TextEditorBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Frank Ebeledike on 04/04/2025.
//

import SwiftUI

struct TextEditorBootcamp: View {
    @State var textEditorText: String = "This is the starting text"
    @State var savedText = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .aspectRatio(1.0, contentMode: .fit)
                    .colorMultiply(.gray)
                    .cornerRadius(12)
                Button {
                    savedText = textEditorText
                } label: {
                    Text("SAVE")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(12)
                        .foregroundColor(.white)
                        .font(.headline)
                }
                
                Spacer()
                Text(savedText)
            }
            .padding()
            .navigationTitle("TextEditor Bootcamp")
            .background(.yellow)
            
        }
    }
}

#Preview {
    TextEditorBootcamp()
}
