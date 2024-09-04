//
//  DarkModeBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 4.09.2024.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    
                    // THIS COLORS ARE NON-ADAPTIVE FOR DARK AND LIGHT MODE.
                    Text("This Color is WHITE")
                        .foregroundStyle(.white)
                    
                    Text("This Color is BLACK")
                        .foregroundStyle(.black)
                    
                    Text("This Color is RED")
                        .foregroundStyle(.red)
                    
                    // THIS COLORS ARE ADAPTIVE FOR LIGHT AND DARK MODE.
                    Text("This Color is PRIMARY")
                        .foregroundStyle(.primary)
                    
                    Text("This Color is SECONDARY")
                        .foregroundStyle(.secondary)
                    
                    Text("This Color is globally adaptive from assets.")
                        .foregroundStyle(Color("AdaptiveColor"))
                        
                    Text("This Color is locally adaptive w/ swiftUI default enviroment object.")
                        .foregroundStyle(colorScheme == .light ? .purple : .yellow)
                        .frame(alignment: .leading)
                        
                }
            }
            .navigationTitle("Dark Mode Bootcamp !")
        }
        
    }
}

#Preview {
    DarkModeBootcamp()
}
        
    

   

