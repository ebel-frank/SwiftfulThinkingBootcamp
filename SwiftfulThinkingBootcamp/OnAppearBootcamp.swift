//
//  OnAppearBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Frank Ebeledike on 12/04/2025.
//

import SwiftUI

struct OnAppearBootcamp: View {
    @State var myText: String = "Starting text"
    @State var count: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                            .onDisappear {
                                count -= 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is the new Text"
                }
                DispatchQueue.global().asyncAfter(deadline: .now()+5) {
                    
                }
                    
            })
            .onDisappear(perform: {
                myText = "Ending text"
            })
            .navigationTitle("OnAppear: \(count)")
        }
    
    }
}

#Preview {
    OnAppearBootcamp()
}
