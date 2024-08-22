//
//  InitBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 22.08.2024.
//

import SwiftUI

struct InitBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    // custom initializer with an enum
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.backgroundColor = .red
            self.title = "Apples"
        } else {
            self.backgroundColor = .orange
            self.title = "Oranges"
        }
    
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        
        ZStack {
            VStack(spacing: 12) {
                Text("\(count)")
                    .font(.largeTitle)
                    .foregroundStyle(Color.white)
                    .underline()
                
                Text(title)
                    .font(.headline)
                    .foregroundStyle(Color.white)
            }
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(15)
        
    }
}

#Preview {
    // This preview in swiftUI gives us a init but if we want we can use custom init like this example.
    HStack {
        InitBootcamp(count: 5, fruit: .apple)
        InitBootcamp(count: 5, fruit: .orange)
    }
    
}
