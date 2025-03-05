//
//  FrameAndAlignmentBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Frank Ebeledike on 25/01/2025.
//

import SwiftUI

struct FrameAndAlignmentBootcamp: View {
    var body: some View {
        // Background and Overlay Bootcamp
        //        Text("Hello World!")
        //            .frame(width: 100, height: 100, alignment: .center)
        //            .background(
        ////                .red
        ////                LinearGradient(gradient: Gradient(colors: [.blue, .red]), startPoint: .leading, endPoint: .trailing)
        //                Circle()
        //                    .fill(.blue)
        //            )
        //            .frame(width: 120, height: 120, alignment: .center)
        //            .background(
        //                Circle()
        //                    .fill(.red)
        //            )

        //        Circle()
        //            .fill(.pink)
        //            .frame(width: 100, height: 100)
        //            .overlay {
        //                Text("Hello!")
        //                    .font(.largeTitle)
        //                    .foregroundColor(.white)
        //            }
        //            .background(
        //                Circle()
        //                    .fill(.purple)
        //                    .frame(width: 110, height: 110)
        //            )

        //        Rectangle()
        //            .frame(width: 100, height: 100)
        //            .overlay(alignment: .topLeading) {
        //                Rectangle()
        //                    .fill(.blue)
        //                    .frame(width: 50, height: 50)
        //            }
        //            .background(
        //                Rectangle()
        //                    .fill(.red)
        //                    .frame(width: 150, height: 150),
        //                alignment: .topTrailing
        //            )

        //        Image(systemName: "heart.fill")
        //            .font(.system(size: 40))
        //            .foregroundColor(.red)
        //            .background(
        //                Circle()
        //                    .fill(
        //                        LinearGradient(
        //                            gradient: Gradient(colors: [.red, .blue]),
        //                            startPoint: .topLeading, endPoint: .bottomTrailing)
        //                    )
        //                    .frame(width: 100, height: 100)
        //                    .shadow(
        //                        color: .red.opacity(0.4),
        //                        radius: 10, x: 0, y: 10)
        //            )
        //            .overlay(alignment: .topTrailing) {
        //                Circle()
        //                    .fill(.green)
        //            }

        Circle()
            .fill(
                LinearGradient(
                    gradient: Gradient(colors: [.red, .blue]),
                    startPoint: .topLeading, endPoint: .bottomTrailing)
            )
            .frame(width: 100, height: 100)
            .overlay(content: {
                Image(systemName: "heart.fill")
                    .font(.system(size: 40))
                    .foregroundColor(.red)
            })
            .overlay(alignment: .topTrailing) {
                Circle()
                    .fill(.blue)
                    .frame(width: 35, height: 35)
                    .overlay {
                        Text("23")
                            .font(.headline)
                            .foregroundColor(.white)
                    }
                    .shadow(
                        color: .blue.opacity(0.4),
                        radius: 10, x: 5, y: 5)
            }
            .shadow(
                color: .red.opacity(0.4),
                radius: 10, x: 0, y: 10)

        //        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //            .background(.green)
        //            .frame(width: 300, height: 300, alignment: .trailing)
        //            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        //            .background(.red)
    }
}

#Preview {
    FrameAndAlignmentBootcamp()
}
