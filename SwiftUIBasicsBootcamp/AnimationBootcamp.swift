//
//  AnimationBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 27.08.2024.
//

import SwiftUI
// ?????
// There is something wrong in this code.All modifiers animated one by one thats why animation not working good.

struct AnimationBootcamp: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            
            Button("Button") {
                // if we animate the toggle every object, view, subview which are connected with this animation gonna change.
                withAnimation(.default.repeatForever(autoreverses: true)) {
                    isAnimated.toggle()
                }
                
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25 )
                .fill(isAnimated ? .green : .red)
                .frame(width: isAnimated ? 100 : 300, 
                       height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
                //.animation(.default.repeatForever(autoreverses: true))
            // .animation just for this rectangle
                
            Spacer()
        }
    }
}

#Preview {
    AnimationBootcamp()
}
