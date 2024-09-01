//
//  TextFieldBotcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 1.09.2024.
//

import SwiftUI

struct TextFieldBotcamp: View {
    
    @State var textFieldText: String = ""
    @State var textArray: [String] = []
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(15))
                    .foregroundStyle(Color.red)
                    .font(.headline)
                    
                Button {
                    if textIsAppropriate() {
                        saveButton()
                    }
                } label: {
                    Text("save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? Color.blue : Color.gray)
                        .cornerRadius(15)
                        .font(.headline)
                        .foregroundColor(.white)
                }
                .disabled(!textIsAppropriate())
                
                ForEach(textArray, id: \.self) { text in
                    Text(text)
                }
                
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextField Bootcamp !")
            
        }
        
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }
    
    func saveButton() {
        textArray.append(textFieldText)
        textFieldText = ""
    }
}

#Preview {
    TextFieldBotcamp()
}
