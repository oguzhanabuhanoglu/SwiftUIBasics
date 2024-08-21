//
//  StacksBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 22.08.2024.
//

import SwiftUI

struct StacksBootcamp: View {
    
    // VStack -> Vertical
    // HStack -> Horizontal
    // ZStack -> Works like background
    
    var body: some View {
        
        ZStack(alignment: .topTrailing) {
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 300, height: 500)
            
            VStack(alignment: .leading, spacing: 0) {
                 Rectangle()
                    .fill(Color.red)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 200)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 150, height: 80)
                
                HStack(alignment: .bottom, spacing: 0) {
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 120, height: 150)
                    
                    Rectangle()
                        .fill(Color.orange)
                        .frame(width: 70, height: 20)
                }
                .background(Color.white)
            }
            .background(Color.black)
        }
        
        
    }
}

#Preview {
    StacksBootcamp()
}
