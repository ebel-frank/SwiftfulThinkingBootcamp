//
//  ModelBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Frank Ebeledike on 12/04/2025.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct ModelBootcamp: View {
    //    @State var users: [String] = [
    //        "Frank", "David", "Benjamin", "Samantha"
    //    ]
    
    @State var users: [UserModel] = [
        UserModel(displayName: "Frank", userName: "@ebel-frank", followerCount: 30000, isVerified: false),
        UserModel(displayName: "David", userName: "@devo", followerCount: 1500, isVerified: true),
        UserModel(displayName: "Samantha", userName: "@Ninja", followerCount: 4000, isVerified: true),
        UserModel(displayName: "Benjamin", userName: "@benji", followerCount: 50, isVerified: false),
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15) {
                        Circle()
                            .frame(width: 35, height: 35)
                        
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text(user.userName)
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                            
                        }
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10) 
                }
                
                //                ForEach(users, id: \.self) { name in
                //                    HStack(spacing: 15) {
                //                        Circle()
                //                            .frame(width: 35, height: 35)
                //
                //                        Text(name)
                //                    }
                //                    .padding(.vertical, 10)
                //                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Users")
        }
    }
}

#Preview {
    ModelBootcamp()
}
