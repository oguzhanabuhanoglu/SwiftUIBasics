//
//  OnAppearBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 11.09.2024.
//

import SwiftUI

struct OnAppearBootcamp: View {
    
    @State var myText: String = "Start text."
    @State var count: Int = 0
    
    var body: some View {
        NavigationView(content: {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(1..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                            .onAppear(perform: {
                                count += 1
                            })
                    }
                }
                
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is new text."
                }
            })
            .onDisappear(perform: {
                myText = "Ending text."
            })
            .navigationTitle("On Appear - Count: \(count)")
        })
    }
}

#Preview {
    OnAppearBootcamp()
}
