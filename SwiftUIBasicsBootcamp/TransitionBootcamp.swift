//
//  TransitionBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 29.08.2024.
//

import SwiftUI

// animations are usually use for subview already on screen, transitions is more efficent to move new view, pop up or something like that to the screen.

struct TransitionBootcamp: View {
    
    @State var isShowing: Bool = false
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            VStack {
                Button("BUTTON: \(isShowing.description)") {
                    isShowing.toggle()
                }
                Spacer()
                
            }
            
            if isShowing {
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    //.transition(.slide)
                    //.transition(.move(edge: .bottom))
                    .transition(.asymmetric(insertion: .move(edge: .leading),
                                            removal: .move(edge: .bottom)))
            }
            
                
        }
        .ignoresSafeArea(edges: .bottom)
        .animation(.easeInOut, value: isShowing)
        
    }
}

#Preview {
    TransitionBootcamp()
}
