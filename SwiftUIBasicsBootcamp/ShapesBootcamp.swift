//
//  ShapesBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 16.08.2024.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        Circle()
        //Rectangle()
        //Capsule(style: .continuous)
        //Ellipse()
        //RoundedRectangle(cornerRadius: 20)
//            .fill(Color.blue)
//            .foregroundColor(.cyan)
//            .stroke()
//            .stroke(Color.blue, lineWidth: 10)
//            .stroke(Color.blue, style: StrokeStyle(lineWidth: 20, lineCap: .square, dash: [50]))
            .trim(from: 0.2, to: 1)
            .stroke(Color.blue, lineWidth: 20)
            .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
        
    }
}

#Preview {
    ShapesBootcamp()
}
