//
//  ForEachBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Frank Ebeledike on 25/01/2025.
//

import SwiftUI

struct ForEachBootcamp: View {
    let data: [String] = ["Frank", "David", "Ben", "katherine"]
    let myString = "Hello"
    var body: some View {
        VStack {
//            ForEach(0 ..< 10) { index in
////                Text("Hi \(index)")
//                HStack {
//                    Circle()
//                        .frame(width: 30, height: 30)
//                    Text("Hi \(index)")
//                }
//            }
            
            ForEach(data.indices, id: \.self) { index in
                Text("\(data[index]) ----> \(index)")
            }
        }
    }
}

#Preview {
    ForEachBootcamp()
}
