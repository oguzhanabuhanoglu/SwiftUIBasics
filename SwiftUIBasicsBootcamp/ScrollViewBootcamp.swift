//
//  ScrollView.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 22.08.2024.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    
    var body: some View {
        
        ScrollView {
            // it makes sense to use Lazy stacks when we get hundreds of data about our appearance. it only loads the data that we are seeing at that moment.
            LazyVStack {
                ForEach(0..<100) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(1..<10) { index in
                                Rectangle()
                                    .fill(Color.white)
                                    .frame(width: 250, height: 150)
                                    .cornerRadius(20)
                                    .shadow(radius: 10)
                                    //.shadow(color: .black, radius: 10, x: 5, y: 5)
                                    .padding()
                            }
                        }
                    }
                    
                }
               
            }
        }
    }
}

#Preview {
    ScrollViewBootcamp()
}
