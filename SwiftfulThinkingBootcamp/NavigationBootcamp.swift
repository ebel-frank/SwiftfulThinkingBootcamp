//
//  NavigationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Frank Ebeledike on 15/02/2025.
//

import SwiftUI

struct NavigationBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Hello World", destination: MyOtherScreen())
                Text("Hello World")
                Text("Hello World")
                Text("Hello World")
            }
            .navigationTitle("All Inboxes")
//            .navigationBarHidden(true)
            .navigationBarItems(
                leading: Image(systemName: "person.fill"),
                trailing: NavigationLink(destination: {
                    MyOtherScreen()
                }, label: {
                    Image(systemName: "gear")
                }).accentColor(.red)
            )
        }
    }
}

struct MyOtherScreen: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
//                .navigationTitle("Greeh")
                .navigationBarHidden(true)
        
            VStack {
                Button("Go Back") {
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("Click here", destination: Text("Hello World"))
            }
        }
    }
}

#Preview {
    NavigationBootcamp()
}
