//
//  SliderBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 4.09.2024.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 4
    @State var color: Color = .red
    
    var body: some View {
        
        VStack {
            Text("Rating:")
//            Text("\(sliderValue)")
//                .foregroundStyle(color)
            
            // format parameter is formatting the decimal numbers.
            Text(String(format: "%.1f", sliderValue))
            
            // BinaryFloatingPoint type is Double thats why sliderValue is double too.
            //            Slider(value: $sliderValue)
            //            Slider(value: $sliderValue, in: 1...5)
            //            Slider(value: $sliderValue,
            //                   in: 1...5,
            //                   step: 1.0)
            
            Slider(value: $sliderValue,
                   in: 0...10,
                   step: 1.0) {
                Text("title")
            } minimumValueLabel: {
                Text("0")
                    .font(.headline)
                    .foregroundStyle(Color.purple)
            } maximumValueLabel: {
                Text("10")
                    .font(.headline)
                    .foregroundStyle(Color.red)
            } onEditingChanged: { _ in
                color = .green
            }
            .padding()

        }
    }
    
}

#Preview {
    SliderBootcamp()
}
