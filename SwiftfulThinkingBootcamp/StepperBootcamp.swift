//
//  StepperBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Frank Ebeledike on 05/04/2025.
//

import SwiftUI

struct StepperBootcamp: View {
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .padding()
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100+widthIncrement, height: 100)
            Stepper("Stepper 2") {
                // Increment
                updateWidth(amount: 10)
            } onDecrement: {
                // Decrement
                updateWidth(amount: -10)
            }
            .padding()

        }
    }
    
    func updateWidth(amount: CGFloat) {
        withAnimation(.easeOut) {
            widthIncrement += amount
        }
    }
}

#Preview {
    StepperBootcamp()
}
