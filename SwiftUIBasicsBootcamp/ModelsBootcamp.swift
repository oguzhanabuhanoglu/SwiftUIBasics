//
//  ModelsBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 11.09.2024.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let username: String
    let followerCount: Int
    let isVerified: Bool
}

struct ModelsBootcamp: View {
    
    @State var users: [UserModel] = [
        UserModel(name: "Nick", username: "nicksarno", followerCount: 100, isVerified: true),
        UserModel(name: "Oğuzhan Abuhan", username: "abushanoglu", followerCount: 55, isVerified: false),
        UserModel(name: "Deniz", username: "denizinyo", followerCount: 140, isVerified: false),
        UserModel(name: "Alper Baygin", username: "ustass", followerCount: 95, isVerified: true)
    ]
    
    var body: some View {
        
        NavigationView(content: {
            List {
                ForEach(users) { user in
                    
                    HStack(spacing: 14){
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading){
                            Text(user.name)
                                .font(.headline)
                            Text("@\(user.username)")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundStyle(.blue)
                        }
                        
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                    }
                    .padding(.vertical, 10)
                    
                }
            }
            .padding(.vertical)
            .navigationTitle("User List")
        })
    }
}

#Preview {
    ModelsBootcamp()
}
