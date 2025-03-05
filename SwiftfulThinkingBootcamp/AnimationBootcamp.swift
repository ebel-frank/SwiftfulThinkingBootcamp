//
//  AnimationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Frank Ebeledike on 29/01/2025.
//

import SwiftUI

struct AnimationBootcamp: View {

    @State var isAnimated = false

    var body: some View {
        VStack {
            Button("Button \(isAnimated)") {
                withAnimation(.default.repeatCount(5, autoreverses: true)) {
                    isAnimated.toggle()
                }
                //                isAnimated.toggle()
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? .red : .green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
            //                .animation(Animation.default.repeatForever(autoreverses: true))
            Spacer()
        }
    }
}

#Preview {
    AnimationBootcamp()
}
