//
//  TabViewBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Frank Ebeledike on 11/04/2025.
//

import SwiftUI

struct TabViewBootCamp: View {
    @State var selectedTab: Int = 0
    
    var body: some View {
        TabView {
            RoundedRectangle(cornerRadius: 25.0)
            RoundedRectangle(cornerRadius: 25.0)
            RoundedRectangle(cornerRadius: 25.0)
        }
        .frame(height: 300)
        .tabViewStyle(.page)
//        TabView(selection: $selectedTab) {
//            HomeView(selectedTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//            Text("BROWSE TAB")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//            Text("PROFILE TAB")
//                .tabItem {
//                    Label("Profile", systemImage: "person.fill")
//                }
//                .tag(2)
//        }
//        .accentColor(.red)
    }
}

#Preview {
    TabViewBootCamp()
}

struct HomeView: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button {
                    selectedTab = 2
                } label: {
                    Text("Go to Profile")
                        .font(.headline)
                        .padding()
                        .background(.white)
                        .cornerRadius(10)
                }

            }
        }
    }
}
