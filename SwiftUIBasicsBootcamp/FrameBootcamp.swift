//
//  FrameBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 21.08.2024.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.red)
            .frame(height: 150, alignment: .top)
            .background(Color.blue)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.green)
            .frame(height: 500)
            .background(Color.yellow)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.purple)
            .ignoresSafeArea()
    }
}

#Preview {
    FrameBootcamp()
}
