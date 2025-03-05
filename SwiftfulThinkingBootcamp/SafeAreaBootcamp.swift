//
//  SafeAreaBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Frank Ebeledike on 27/01/2025.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        VStack {
            Text("Hello World")
                
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.green)
//        .edgesIgnoringSafeArea(.top)
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    SafeAreaBootcamp()
}
