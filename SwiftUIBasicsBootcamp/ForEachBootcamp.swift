//
//  ForEachBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 22.08.2024.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["hi", "hello", "hola"]
    
    var body: some View {
        
        VStack{
            
//            ForEach(data.indices) { index in
//                Text("\(data[index]): \(index)")
//            }
            
            ForEach(data, id: \.self) { item in
                Text(item)
            }
        }
//        VStack {
//            ForEach(0..<10) { index in
//                HStack {
//                    Circle()
//                        .fill(Color.red)
//                        .frame(width: 30, height: 30)
//                    
//                    Text("index is: \(index)")
//                }
//            }
//        }
    }
}

#Preview {
    ForEachBootcamp()
}
