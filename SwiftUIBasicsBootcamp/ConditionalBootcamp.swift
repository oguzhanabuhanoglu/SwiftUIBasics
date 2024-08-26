//
//  ConditionalBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 26.08.2024.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20){
            
            Button("Loading: \(isLoading.description)") {
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            }
//            Button("Circle Button: \(showCircle.description)") {
//                showCircle.toggle()
//            }
//            
//            Button("Show Rectangle: \(showRectangle.description)") {
//                showRectangle.toggle()
//            }
//            
//            if showCircle == true {
//                Circle()
//                    .fill(.black)
//                    .frame(width: 100, height: 100)
//            }
//            
//            // we dont have to say == true if we want true also for == false we can use "!" this like !showRectangle
//            if showRectangle {
//                Rectangle()
//                    .fill(.black)
//                    .frame(width: 100, height: 100)
//            }
//            
//            // AND Operator
//            if showCircle && showRectangle {
//                RoundedRectangle(cornerRadius: 25.0)
//                    .fill(.black)
//                    .frame(width: 200, height: 100)
//            }
//            
//            // OR Operator
//            if !showCircle || !showRectangle {
//                RoundedRectangle(cornerRadius: 25.0)
//                    .fill(.black)
//                    .frame(width: 200, height: 100)
//            }
            
            Spacer()
        }
    }
}

#Preview {
    ConditionalBootcamp()
}
