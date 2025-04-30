//
//  DocumentationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Frank Ebeledike on 11/04/2025.
//

import SwiftUI

struct DocumentationBootcamp: View {
    // MARK: Properties
    @State var data: [String] = [
        "Apple", "Oranges", "Bananas", "Tomatoes"
    ]
    @State var showAlert: Bool = false
    
    // MARK: Body
    // Working compy - things to do:
    // 1) Fix title
    /*
     Working copy - things to do
     1. Fix title
     2. Fix alert
     */
    var body: some View {
        NavigationView {
            ZStack {
                // background
                Color.yellow.ignoresSafeArea()
                
                // foreground
                foregroundLayer
                .navigationTitle("Documentation")
                .navigationBarItems(trailing: Button("ALERT") {
                    showAlert.toggle()
                })
                .alert(isPresented: $showAlert) {
                    getAlert(text: "This is an alert")
                }
            }
        }
    }
    
    /// This is a foreground layer that hols a scrollview
    private var foregroundLayer: some View {
        ScrollView {
            Text("Hello")
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        }
    }
    
    
    // MARK: Functions
    
    
    
    /// Gets an alert with a specified title
    ///
    /// This function creates and returns an alert imediately. The alert will have a titlle based on the text parameter, but it will not have a message.
    /// ```
    ///    getAlert(text: "Thank you!")
    /// ```
    /// - Warning: There is no additional message in this Alert.
    /// - Parameter text: This is the title for the alert
    /// - Returns: Returns an Alert with a title
    func getAlert(text: String) -> Alert {
        return Alert(title: Text((text)))
    }
}


// MARK: Preview
#Preview {
    DocumentationBootcamp()
}
