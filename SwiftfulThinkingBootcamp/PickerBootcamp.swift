//
//  PickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Frank Ebeledike on 04/04/2025.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection: Int = 0
    let products: [String] = [
        "Bread",
        "Beans",
        "Egg",
        "Tomatoes",
        "Fish",
        "Garri"
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text("Product")
                Text(products[selection])
            }
            Picker(selection: $selection) {
                ForEach(products.indices, id: \.self) { index in
                    HStack {
                        Text(products[index]).tag(index)
                        Image(systemName: "heart.fill")
                    }
                }
            } label: {
                Text("Picker")
            }
            .pickerStyle(MenuPickerStyle())
            
        }

    }
}

#Preview {
    PickerBootcamp()
}
