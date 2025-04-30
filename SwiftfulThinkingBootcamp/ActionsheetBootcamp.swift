//
//  ActionsheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Frank Ebeledike on 04/04/2025.
//

import SwiftUI

struct ActionsheetBootcamp: View {
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionsheetOptions = .isOtherPost
    
    enum ActionsheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@somebody_username")
                Spacer()
                Button {
                    actionSheetOption = .isOtherPost
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .accentColor(.black)
            }
            .padding(.horizontal)
            Rectangle()
                .aspectRatio(1.5, contentMode: .fit)
            
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@my_username")
                Spacer()
                Button {
                    actionSheetOption = .isMyPost
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .accentColor(.black)
            }
            .padding(.horizontal)
            Rectangle()
                .aspectRatio(1.5, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
    }
    
    func getActionSheet() -> ActionSheet {
        var buttons: [ActionSheet.Button] = [
            // Share
            .default(Text("Share")) {
                
            },
            .cancel()
        ]
        switch actionSheetOption {
        case .isMyPost:
            // Delette
            buttons.append(.destructive(Text("Delete")) {
                
            })
        case .isOtherPost:
            // Report
            buttons.append(.destructive(Text("Report")) {
                
            })
        }
        return ActionSheet(title: Text("What would you like to do"), buttons: buttons)
        
//        ActionSheet(title: Text("This is the tile"),
//                    message: Text("This is the message"),
//                    buttons: [
////                        .cancel(),  // We can only have one cancel button
//                        .default(Text("Default")),
//                        .default(Text("Default")),
//                        .default(Text("Default")),
//                        .destructive(Text("Default")),
//                        .destructive(Text("Default")),
//                        .destructive(Text("Default")),
//                        .cancel()
//                    ])
        
//        ActionSheet(title: Text("This is the title"))
    }
}

#Preview {
    ActionsheetBootcamp()
}
