//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Frank Ebeledike on 24/01/2025.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello World! This is the Swiftful Thinking Bootcamp. I am really enjoying this course and learning alot")
//            .baselineOffset(10.0)
//            .kerning(10)
            .multilineTextAlignment(.leading)
        //            .font(.system(size: 24, weight: .semibold, design: .rounded))
        //        //            .font(.title)
        //            .fontWeight(.semibold)
        //            .underline()
        //            .italic()
        //            .strikethrough()
        //            .underline(true, color: Color.red)
        //            .strikethrough(true, color: Color.yellow)
            .foregroundColor(Color.red)
            .frame(width: 200, height: 100, alignment: .center)
//        minimumScaleFactor(1)
            .padding()
    }
}

#Preview {
    TextBootcamp()
}
