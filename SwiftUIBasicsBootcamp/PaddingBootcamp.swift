//
//  PaddingBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 22.08.2024.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 10)
            
            Text("This is an explanation text to explain what we will do. We are trying to show how paddings are works.")
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: .black, radius: 10, x: 0, y: 10)
        )
        .padding(.horizontal, 10)
        
    }
}

#Preview {
    PaddingBootcamp()
}
