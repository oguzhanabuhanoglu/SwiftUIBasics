//
//  ToolbarBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 26.09.2024.
//

import SwiftUI

struct ToolbarBootcamp: View {
    
    @State var text: String = ""
    @State private var path: [String] = []
    
    var body: some View {
        NavigationStack(path: $path) {
            ScrollView {
                VStack {
                    
                    TextField("Placeholder", text: $text)
                    
                    ForEach(1..<10) { int in
                        RoundedRectangle(cornerRadius: 0)
                            .frame(width: 200, height: 200)
                            .background(Color.blue)
                    }
                }
            }
            .navigationTitle("Toolbar Bootcamp")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "heart.fill")
                }
                
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "gear")
                }
            }
            .toolbarTitleMenu {
                Button("Screen 1") {
                    path.append("1")
                }
                Button("Screen 2") {
                    path.append("2")
                }
            }
            .navigationDestination(for: String.self) { value in
                Text("New Screen: \(value)")
            }
            
        }
        
    }
}

#Preview {
    ToolbarBootcamp()
}
