//
//  AnimationUpdatedBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 26.09.2024.
//

import SwiftUI

struct AnimationUpdatedBootcamp: View {
    
    @State private var animated1: Bool = false
    @State private var animated2: Bool = false
    
    var body: some View {
        VStack(spacing: 50) {
            Button("Animation 1") {
                animated1.toggle()
            }
            
            Button("Animation 2") {
                animated2.toggle()
            }
            
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .frame(width: 100, height: 100)
                    .frame(maxWidth: .infinity, alignment: animated1 ? .leading : .trailing)
                    .background(Color.green)
                    .frame(maxHeight: .infinity, alignment: animated2 ? .top : .bottom)
                    .background(Color.orange)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.red)
        }
        // With iOS 16 .animation wants value parameter. This animation plays just when that value changed.
        .animation(.easeInOut, value: animated1)
        .animation(.spring(), value: animated2)
    }
}

#Preview {
    AnimationUpdatedBootcamp()
}
