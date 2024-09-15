//
//  BadgeBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 15.09.2024.
//

import SwiftUI

struct BadgeBootcamp: View {
    var body: some View {
        TabView {
            Color.red
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Notifications")
                }
                .badge(5)
            
            Color.green
                .tabItem {
                    Image(systemName: "questionmark")
                    Text("Notifications")
                }
                .badge(5)
            
            Color.blue
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Notifications")
                }
                .badge("New")
        }
    }
}

#Preview {
    BadgeBootcamp()
}
