//
//  GroupBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 26.09.2024.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello, World!")
            
            // we can also use another VStack but groups are works without new rendering. So if we wanna add modifiers for all the items in this group.
            Group {
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .foregroundStyle(.green)
            .font(.caption)
        }
        .foregroundStyle(.red)
        .font(.headline)
    }
}

#Preview {
    GroupBootcamp()
}
