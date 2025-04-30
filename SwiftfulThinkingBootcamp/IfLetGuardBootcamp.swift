//
//  IfLetGuardBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Frank Ebeledike on 12/04/2025.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    @State var curUserId: String? = "test"
    @State var displayText: String?
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Here we are practicing safe coding!")
                if let text = displayText {
                    Text(text)
                        .font(.title)
                        .padding()
                } else {
                    ProgressView { Text("Loading")}
                }
//                if isLoading {
//                    ProgressView()
//                }
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData2()
            }
            
        }
    }
    
    // MARK: Function
    func loadData() {
        if let userId = curUserId {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data! User id is: \(userId)"
                isLoading = false
            }
        } else {
            displayText = "Error: There is no User ID!"
        }
    }
    
    func loadData2() {
        guard let userId = curUserId else {
            displayText = "Error: There is no User ID!"
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data! User id is: \(userId)"
            isLoading = false
        }
    }
}

#Preview {
    IfLetGuardBootcamp()
}
