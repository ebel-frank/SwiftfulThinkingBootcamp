//
//  ToggleBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Frank Ebeledike on 04/04/2025.
//

import SwiftUI

struct ToggleBootcamp: View {
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Status")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            Toggle(isOn: $toggleIsOn) {
                Text("Change status")
            }
            .toggleStyle(SwitchToggleStyle(tint: .red))
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ToggleBootcamp()
}
