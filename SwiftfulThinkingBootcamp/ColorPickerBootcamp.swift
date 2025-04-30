//
//  ColorPickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Frank Ebeledike on 05/04/2025.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    @State var bgColor: Color = .green
    @State var selectedDate: Date = .now
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? .now
    let endingDate: Date = .now
    var dateFormarter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        ZStack {
            bgColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                ColorPicker("Select a color",
                            selection: $bgColor,
                            supportsOpacity: true)
                .padding()
                .background(Color.black.opacity(0.2))
                .cornerRadius(10)
                .padding()
                .foregroundColor(.white)
                .font(.headline)
                
                
//                Text("Selected date is: \(selectedDate.description)")
                Text("Selected date is: \(dateFormarter.string(from: selectedDate).description)")
                
//                DatePicker("Select a date", selection: $selectedDate)
//                DatePicker("Select a date", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
                DatePicker("Select a date", selection: $selectedDate, in: startingDate...endingDate)
                .accentColor(.red)
                    .datePickerStyle(.compact)
            }
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
