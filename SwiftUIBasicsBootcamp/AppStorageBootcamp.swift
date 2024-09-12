//
//  AppStorageBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 13.09.2024.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
    @AppStorage("name") var currentUsername: String?
    
    var body: some View {
        VStack(spacing: 20){
            
            Text(currentUsername ?? "Add name here !")
            
            Button("save".uppercased()) {
                let name: String = "Oğuz"
                currentUsername = name

            }
        }
        
    }
}

struct UserDefaultsReminder: View {
    
    @State var currentUsername: String?
    
    var body: some View {
        VStack(spacing: 20){
            
            Text(currentUsername ?? "Add name here !")
            
            Button("save".uppercased()) {
                let name: String = "Nick"
                currentUsername = name
                UserDefaults.standard.set(name, forKey: "name")
            }
        }
        .onAppear(perform: {
            currentUsername = UserDefaults.standard.string(forKey: "name")
        })
    }
}

#Preview {
    AppStorageBootcamp()
}
