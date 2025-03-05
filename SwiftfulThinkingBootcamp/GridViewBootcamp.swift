//
//  GridViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Frank Ebeledike on 26/01/2025.
//

import SwiftUI

struct GridViewBootcamp: View {
    let columns: [GridItem] = [
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.fixed(100), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
        
        // Flexible **********
//        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        
//        GridItem(.adaptive(minimum: 50, maximum: 300), spacing: nil, alignment: nil),
    ]
    
    var body: some View {
        
        ScrollView {
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: 12,
                      pinnedViews: []
            ) {
                Section(header: Text("Section 1")) {
                    ForEach(0 ..< 10) { index in
                        Rectangle()
                            .frame(height: 150)
                    }
                }
                Section(header: Text("Section 2")) {
                    ForEach(0 ..< 10) { index in
                        Rectangle()
                            .frame(height: 150)
                    }
                }
                
            }.padding()
        }
    }
}

#Preview {
    GridViewBootcamp()
}
