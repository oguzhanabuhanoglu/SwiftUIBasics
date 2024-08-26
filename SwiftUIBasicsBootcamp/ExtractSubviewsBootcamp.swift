//
//  ExtractSubviewsBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 26.08.2024.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    var body: some View {
        ZStack {
            //background
            Color.blue.ignoresSafeArea()
            
            //content
            content
            
        }
    }
    
    // to keep the body clean
    var content: some View {
        HStack {
            ContentLayer(count: 1, title: "Apples", color: .red)
            ContentLayer(count: 13, title: "Oranges", color: .orange)
            ContentLayer(count: 9, title: "Bananas", color: .yellow)
        }
    }
}

#Preview {
    ExtractSubviewsBootcamp()
}

// if i will use this content more than a view i should create it like another view with a own body.
struct ContentLayer: View {
    
    var count: Int
    var title: String
    var color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(15)
    }
}
