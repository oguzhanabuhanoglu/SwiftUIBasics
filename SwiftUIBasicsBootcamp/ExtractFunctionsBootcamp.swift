//
//  CleanCodeBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 25.08.2024.
//

import SwiftUI

struct ExtractFunctionsBootcamp: View {
    
    @State var backgroundColor: Color = .pink
    
    var body: some View {
        
        ZStack {
            // background
            backgroundColor.ignoresSafeArea()
            
            // content
            contentLayer
        }
        
    }
    
    // theese are outside the body to keep the body clean and readable.
    func changeBackgroundColor() {
        if backgroundColor == .white {
            backgroundColor = .pink
        } else {
            backgroundColor = .white
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("Clean Code")
                .font(.title)
            
            Button {
                changeBackgroundColor()
            } label: {
                Text("Change Color")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
                    
            }
        }
    }
}

#Preview {
    ExtractFunctionsBootcamp()
}
