//
//  StateBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 25.08.2024.
//

import SwiftUI

struct StateBootcamp: View {
    
    // in UIKit "var" is enough to make that variable changeable but in swiftUI we also must say to view, this variable can change. That's @State var doing.
    
    @State var backgroundColor: Color = .green
    @State var title: String = "My title"
    @State var count: Int = 0
    
    var body: some View {
        
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Text(title)
                    .font(.title)
                    .padding()
                
                Text("Count: \(count)")
                    .font(.headline)
                    .padding()
                
                
                HStack {
                    Button("BUTTON 1") {
                        backgroundColor = .yellow
                        title = "BUTTON 1 Clicked"
                        count += 1
                    }
                    
                    Button("BUTTON 2") {
                        backgroundColor = .blue
                        title = "BUTTON 2 Clicked"
                        count -= 1
                    }
                }
            }
            .foregroundStyle(Color.white)
        }
    }
}

#Preview {
    StateBootcamp()
}
