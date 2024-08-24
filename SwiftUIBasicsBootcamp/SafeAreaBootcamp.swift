//
//  SafeAreaBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 24.08.2024.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    
    var body: some View {
    
            ScrollView {
                VStack {
                    Text("Hello Word!")
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    
                    ForEach(0..<49) { index in
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(Color.white)
                            .frame(height: 150)
                            .shadow(color: .black, radius: 10, x: 5, y: 5)
                            .padding()
                        
                    }
                }
                .background(Color.blue)
            }
        
//            .background(Color.red)
            .background(
                Color.red
                    .ignoresSafeArea()
            )
         //if i use it like this it ignores safe area for scroll View too
//            .background(Color.red)
//            .ignoresSafeArea()
            
            
        

//        VStack {
//            Text("Safe Area")
//            Spacer()
//        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(Color.red)
        
        
            
            
            
        
    }
}

#Preview {
    SafeAreaBootcamp()
}
