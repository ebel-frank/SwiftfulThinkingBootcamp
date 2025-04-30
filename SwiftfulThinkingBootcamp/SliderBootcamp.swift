//
//  SliderBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Frank Ebeledike on 05/04/2025.
//

import SwiftUI

struct SliderBootcamp: View {
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            Text("Rating:")
            Text(
                String(format: "%.2f", sliderValue)
//                "\(sliderValue)"
            )
            .foregroundColor(color)
//            Slider(value: $sliderValue)
//                .accentColor(.red)
            
//            Slider(value: $sliderValue, in: 1...5)
//            Slider(value: $sliderValue, in: 1...5, step: 0.5)
//            Slider(value: $sliderValue,
//                   in: 1...5,
//                   step: 1.0) { _ in
//                color = .green
//            }
//                   label: {
//                Text("Title")
//            } minimumValueLabel:
//                Text("1"), maximumValueLabel: {
//                Text("5")
//            })
            Slider(value: $sliderValue,
                   in: 1...5,
                   step: 1.0,
                   label: {
                Text("Title")
            }, minimumValueLabel: {
                Text("1")
            }, maximumValueLabel: {
                Text("5")
            }, onEditingChanged: { _ in
                color = .green
            })
                .accentColor(.red)
                .padding()
        }
    }
}

#Preview {
    SliderBootcamp()
}
