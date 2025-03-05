//
//  ButtonBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Frank Ebeledike on 27/01/2025.
//

import SwiftUI

struct ButtonBootcamp: View {
    @State var title: String = "This is my title"
    var body: some View {
        //        Button {
        //
        //        } label: {
        //
        //        }
        VStack(spacing: 20) {
            Text(title)
            Button("Press me!") {
                self.title = "Button was pressed!"
            }
            .accentColor(.red)

            Button {
                self.title = "Button#2 was pressed"
            } label: {
                Text("SAVE")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            }
            
            Button {
                self.title = "Button number 3"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    }
            }
            
            Button {
                self.title = "Button number 4"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2)
                    )
            
            }

        }
    }
}

#Preview {
    ButtonBootcamp()
}
