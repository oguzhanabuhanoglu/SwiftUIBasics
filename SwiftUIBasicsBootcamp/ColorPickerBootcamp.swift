//
//  ColorPickerBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 3.09.2024.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var backgroundColor: Color = .green
    
    var body: some View {
        
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            ColorPicker("Select a color",
                        selection: $backgroundColor,
                        supportsOpacity: true
            )
            .padding()
            .background()
            .cornerRadius(15)
            .font(.headline)
            .fontWeight(.semibold)
            .padding(50)
            
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
