//
//  ContextMenuBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 1.09.2024.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = .purple
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftfull Thinking")
                .font(.headline)
            Text("Context Menu Bootcamp")
                .font(.subheadline)
        }
        .foregroundStyle(Color.white)
        .padding(25)
        .background(backgroundColor.cornerRadius(15))
        .contextMenu(menuItems: {
            
            Button(action: {
                backgroundColor = .yellow
            }, label: {
                Label("Like", systemImage: "flame.fill")
            })
            
            Button {
                backgroundColor = .pink
            } label: {
                Label("Share", systemImage: "paperplane.fill")
            }

        })
        
    }
}

#Preview {
    ContextMenuBootcamp()
}
