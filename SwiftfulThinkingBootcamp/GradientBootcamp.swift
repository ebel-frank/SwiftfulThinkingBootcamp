//
//  GradientBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Frank Ebeledike on 24/01/2025.
//

import SwiftUI

struct GradientBootcamp: View {
    var body: some View {
        // Shapes ******************************
        
        //        RoundedRectangle(cornerRadius: 20)
        //            .fill(
        //                .red
        //                LinearGradient(gradient: Gradient(colors: [
        //                    .red, .blue, .green, .orange
        //                ]), startPoint: .top, endPoint: .bottom)
        //                RadialGradient(gradient: Gradient(colors: [.red, .blue]), center: .leading, startRadius: 5, endRadius: 400)
        //                AngularGradient(gradient: Gradient(colors: [.red, .blue]), center: .bottom, angle: .degrees(45+45))
        //            )
        //            .frame(width: 300, height: 300)
        //            .padding()

        // Icons  **********************************

        //        Image(systemName: "vision.pro.badge.exclamationmark.fill")
        //            .renderingMode(.original)
        //            .font(.system(size: 200))
        //            .resizable()
        //            .scaledToFill()
        ////            .aspectRatio(contentMode: .fill)
        ////            .clipped()
        //            .foregroundColor(.yellow)
        //            .frame(width: 200, height: 200)
        
        // Images *****************************
        
        Image("Tiger")
//            .renderingMode(.template)
            .resizable()
            .scaledToFill()
//            .foregroundColor(.green)
            .frame(width: 300, height: 300)
//            .cornerRadius(150)
            .clipShape(
//                Circle()
//                RoundedRectangle(cornerRadius: 20)
//                Ellipse()
                Circle()
            )
    }
}

#Preview {
    GradientBootcamp()
}
