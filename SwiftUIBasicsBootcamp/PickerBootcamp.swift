//
//  PickerBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 3.09.2024.
//

import SwiftUI

struct PickerBootcamp: View {
    
    //@State var selection: String = "18"
    @State var selection: String = "Most Recent"
    @State var filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    
    
    var body: some View {
        
        Picker(selection: $selection) {
            ForEach(filterOptions.indices) { index in
                Text(filterOptions[index]).tag(filterOptions[index])
            }
        } label: {
            //
        }
        .pickerStyle(SegmentedPickerStyle())

        
//        VStack {
//            Picker(selection: $selection) {
//                ForEach(filterOptions, id: \.self) { option in
//                    Text(option).tag("\(option)")
//                }
//            } label: {
//
//                // Burada bir sıkıntı oldu özelleştiremedim. Düzelttiğimde commitleyeceğim.
//                HStack {
//                    Text("Filter:")
//                    Text(selection)
//                }
//                .font(.title)
//                .foregroundStyle(Color.red)
//                .background(Color.red)
//            }
//
//        }
        
//        VStack {
//            HStack {
//                Text("Age:")
//                Text(selection)
//            }
//            
//            Picker(selection: $selection) {
//                ForEach(18..<100) { number in
//                    Text("\(number)").tag("\(number)")
//                }
//            } label: {
//                Text("Picker")
//            }
//            // Default: menu picker style
//            //.pickerStyle(WheelPickerStyle())
//        }
    }
}

#Preview {
    PickerBootcamp()
}
