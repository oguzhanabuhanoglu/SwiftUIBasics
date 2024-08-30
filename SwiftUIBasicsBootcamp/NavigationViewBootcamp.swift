//
//  NavigationViewBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 30.08.2024.
//

import SwiftUI

// we should use just one navigation view for one hierarchy.
// .displayMode(.automatic) duruma göre inline duruma göre large yapar. Scroll viewlar için çok kullanıslıdır.

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Text("Hello Word!")
                Text("Hello Word!")
                Text("Hello Word!")
                Text("Hello Word!")
                
                NavigationLink("To Second Screen") {
                    OtherScreen()
                }
            }
            .navigationTitle("All Inboxes")
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarItems(leading: 
                                    HStack {
                                            Image(systemName: "person.fill")
                                            Image(systemName: "flame.fill")
                                        },
                                trailing: NavigationLink(destination: {
                                                OtherScreen()
                                                }, label: {
                                                Image(systemName: "gear")
                                                    .foregroundStyle(Color.gray)
                                                }))
        }
        
    }
}

struct OtherScreen: View {
    
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
                .navigationTitle("Green Screen!")
                .navigationBarTitleDisplayMode(.inline)
                //.navigationBarHidden(true)
            
            VStack {
                Button("Go Back Button") {
                    mode.wrappedValue.dismiss()
                }
                .padding()
                
                NavigationLink("Click Here", destination: Text("3th Screen"))

            }
                
            
        }
    }
}

#Preview {
    NavigationViewBootcamp()
}
