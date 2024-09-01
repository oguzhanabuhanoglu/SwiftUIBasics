//
//  TextEditorBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 1.09.2024.
//

import SwiftUI

// It works like a textField the only difference is textEditor has multiple lines.

struct TextEditorBootcamp: View {
    
    @State var textEditorText: String = ""
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                // we can not change the bacground color. to change background color we can use the colormultiply. But it works just for primary text color or black.
                    .colorMultiply(.gray.opacity(0.5))
                    .cornerRadius(15)
                    //.background(Color.red)
                
                Button {
                    savedText = textEditorText
                } label: {
                    Text("save".uppercased())
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(15)
                        .foregroundStyle(Color.white)
                        
                }
                
                Text(savedText)
                Spacer()
            }
            .padding()
            .navigationTitle("Text Editor Bootcamp !")
            
           
        }
    }
}

#Preview {
    TextEditorBootcamp()
}
