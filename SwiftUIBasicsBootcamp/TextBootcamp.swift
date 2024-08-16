//
//  TextBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 16.08.2024.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello world i am trying to learn all basics of swiftUI with every details.".capitalized)
            .font(.body)
//            .fontWeight(.semibold)
//            .bold()
//            .underline()
//            .italic()
//            .strikethrough()
//            .font(.system(size: 24, weight: .semibold, design: .default))
            //.kerning(10)
            .multilineTextAlignment(.leading)
            .baselineOffset(50)
            .foregroundStyle(.green)
            //.frame(width: 200, height: 100, alignment: .leading)
            .border(Color.black)
            //.minimumScaleFactor(0.1)
        
        
        
    }
}

#Preview {
    TextBootcamp()
}
