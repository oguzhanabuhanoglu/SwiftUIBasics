//
//  BindingBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 26.08.2024.
//

import SwiftUI

// in this example we trying to change variable value  which is in mainView from subview. But the problem is subview doesn't have that variable. So situations like this need binding variables.

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = .green
    
    var body: some View {
        
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            // we should use "$" sign to bind variable.
            ButtonView(backgroundColor: $backgroundColor)
            
        }
    }
}

struct ButtonView: View {
    // this binding variable bind the background color which is in the mainView.
    @Binding var backgroundColor: Color
    
    var body: some View {
        Button(action: {
            backgroundColor = .red
        }, label: {
            Text("Button")
                .foregroundStyle(Color.white)
                .padding()
                .padding(.horizontal, 20)
                .background(Color.blue)
                .cornerRadius(10)
        })
    }
}

#Preview {
    BindingBootcamp()
}
