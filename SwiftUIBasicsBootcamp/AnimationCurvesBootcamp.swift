//
//  AnimationCurvesBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 27.08.2024.
//

import SwiftUI

struct AnimationCurvesBootcamp: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack{
            Button("Button") {
                isAnimated.toggle()
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: 25.0)
                .fill(.black)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.spring(response: 1,
                                   dampingFraction: 0.2, // sönümleme
                                   blendDuration: 1))
    
            // Different kind of animations with a duration
//            RoundedRectangle(cornerRadius: 25.0)
//                .fill(.black)
//                .frame(width: isAnimated ? 350 : 50, height: 100)
//                .animation(.linear(duration: 10))
//            
//            RoundedRectangle(cornerRadius: 25.0)
//                .fill(.black)
//                .frame(width: isAnimated ? 350 : 50, height: 100)
//                .animation(.easeIn(duration: 10))
//            
//            RoundedRectangle(cornerRadius: 25.0)
//                .fill(.black)
//                .frame(width: isAnimated ? 350 : 50, height: 100)
//                .animation(.easeOut(duration: 10))
//            
//            RoundedRectangle(cornerRadius: 25.0)
//                .fill(.black)
//                .frame(width: isAnimated ? 350 : 50, height: 100)
//                .animation(.easeInOut(duration: 10))
            
            
            Spacer()
        }
    }
}

#Preview {
    AnimationCurvesBootcamp()
}
