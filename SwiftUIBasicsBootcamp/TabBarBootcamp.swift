//
//  TabBarBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 4.09.2024.
//

import SwiftUI

// yorum satırlı kısım (.tabViewStyle(PageTabViewStyle())) örneğidir. 

struct TabBarBootcamp: View {
    
    @State var selectedTab: Int = 0
    
//    let icons: [String] = [
//        "house.fill", "globe", "person.fill"
//    ]
    
    var body: some View {
        TabView(selection: $selectedTab) {
            
            HomeView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            
            Text("Browse View")
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
                .tag(1)
            
            Text("Profile View")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(2)
        }
        .accentColor(.red)
        
//        TabView {
//            ForEach(icons, id: \.self) { icon in
//                Image(systemName: icon)
//                    .resizable()
//                    .scaledToFit()
//                    .padding()
//            }
//        }
//        .background(
//            RadialGradient(gradient: Gradient(colors: [.red, .blue]), center: .center, startRadius: 5, endRadius: 300)
//        )
//        .tabViewStyle(PageTabViewStyle())
//        .frame(height: 300)
        
        
    }
    
}

struct HomeView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea(edges: .top)
            
            VStack {
                Text("Home View")
                    .foregroundStyle(Color.white)
                    .font(.title)
                    
                Button {
                    selectedTab = 2
                } label: {
                    Text("Go to Profile")
                        .foregroundStyle(Color.red)
                        .padding()
                        .padding(.horizontal)
                        .background()
                        .cornerRadius(15)
                }
            }
        }
    }
}

#Preview {
    TabBarBootcamp()
}
