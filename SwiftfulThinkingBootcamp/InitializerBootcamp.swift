//
//  InitializerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Frank Ebeledike on 25/01/2025.
//

import SwiftUI

struct InitializerBootcamp: View {
    let bgColor: Color
    let count: Int
    @State var fruit: Fruit

    init(count: Int, fruit: Fruit) {
        self.count = count
        self.fruit = fruit
        switch fruit {
        case .apple:
            self.bgColor = .red
        case .orange:
            self.bgColor = .orange
        case .pear:
            self.bgColor = .green
        }
    }

    enum Fruit {
        case apple
        case orange
        case pear

        func title() -> String {
            switch self {
            case .apple:
                return "Apple"
            case .orange:
                return "Orange"
            case .pear:
                return "Pear"
            }
        }
    }

    var body: some View {
        VStack {
            Text("\(count)")
                .font(.largeTitle)
                .underline()
            Text(fruit.title())
                .font(.headline)
        }
        .foregroundColor(.white)
        .frame(width: 150, height: 150)
        .background(bgColor)
        .cornerRadius(10)
    }
}

#Preview {
    VStack {
        InitializerBootcamp(count: 20, fruit: .pear)
        InitializerBootcamp(count: 30, fruit: .apple)
        InitializerBootcamp(count: 100, fruit: .orange)
    }
}
