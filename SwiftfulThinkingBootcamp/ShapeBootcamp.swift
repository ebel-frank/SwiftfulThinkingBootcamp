//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Frank Ebeledike on 24/01/2025.
//

import SwiftUI

struct ShapeBootcamp: View {
    var body: some View {
        //        Circle()
        //        Ellipse()
        //        Capsule(style: .circular)
        //        Rectangle()
        RoundedRectangle(cornerRadius: 60)
            //            .fill(.blue)
            //            .foregroundColor(.green)
            //            .stroke(.red)
            //            .stroke(.blue, lineWidth: 30)
            //            .stroke(.orange, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10]))
            //            .trim(from: 0.4, to: 1.0)
            //

            // Colors ***************
            .fill(
//                .secondary
//                Color(red: 100, green: 10, blue: 0)
//                Color(uiColor: UIColor.secondarySystemBackground)
                Color("CustomColor")
            )

            .frame(width: 200, height: 100)
//            .shadow(radius: 30)
            .shadow(color: Color("CustomColor").opacity(0.3), radius: 10, x: -20, y: -20)
            .padding()
    }
}

#Preview {
    ShapeBootcamp()
}
