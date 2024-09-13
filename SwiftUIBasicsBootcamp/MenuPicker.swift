//
//  MenuPicker.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 13.09.2024.
//

import SwiftUI

struct MenuPicker: View {
    
    @State var selection: String = "Select a category"
    @State var categories: [String] =
    ["Meeting", "Study Body", "Place to work", "Swift Buddies Event", "Meeting", "Study Body", "Place to work", "Swift Buddies Event", "Meeting", "Study Body", "Place to work", "Swift Buddies Event"]
    
    var body: some View {
        
        VStack(spacing: 60){
            Picker(selection: $selection) {
                ForEach(categories, id: \.self) { category in
                    Text(category.capitalized)
                        .foregroundStyle(.red)
                }
            } label: {
                HStack {
                    Text(selection)
                        .foregroundStyle(.primary)
                }
                .background(Color.gray)
            }
            .pickerStyle(MenuPickerStyle())
            
            Menu {
                ForEach(categories, id: \.self) { category in
                    Button(action: {
                        selection = category
                    }) {
                        Text(category.capitalized)
                            .foregroundColor(.red)
                            .frame(maxWidth: .infinity)
                            
                    }
                }
            } label: {
                HStack {
                    Text(selection)
                        .font(.headline)
                        .foregroundStyle(Color("AdaptiveColor"))
                        .padding()
                        .frame(maxWidth: .infinity)
                        .frame(height: 55)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.primary, lineWidth: 1)
                        )
                        .background(
                            Color(.secondarySystemBackground)
                        )
                        .padding(.horizontal)
                }
            }
            
           
        }
        
    }
}

#Preview {
    MenuPicker()
}
