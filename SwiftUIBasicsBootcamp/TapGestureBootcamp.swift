//
//  TapGestureBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 11.09.2024.
//

import SwiftUI

struct TapGestureBootcamp: View {
    
    @State var color: Color = .black
    @State var isClicked: Bool = false
    
    var body: some View {
        VStack(spacing: 30) {
            RoundedRectangle(cornerRadius: 25.0)
                .fill(isClicked ? .green : .red)
                .frame(height: 200)
                
            Button {
                isClicked.toggle()
            } label: {
                Text("Button")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25)
                    
            }
            
            Text("Button")
                .font(.headline)
                .foregroundStyle(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25)
                .onTapGesture {
                    isClicked.toggle()
                }
//                .onTapGesture(count: 2, perform: {
//                    isClicked.toggle()
//                })
            
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    TapGestureBootcamp()
}
