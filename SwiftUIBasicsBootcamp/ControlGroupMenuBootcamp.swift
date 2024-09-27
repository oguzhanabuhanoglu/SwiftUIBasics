//
//  ControlGroupMenuBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 27.09.2024.
//

import SwiftUI

struct ControlGroupMenuBootcamp: View {
    var body: some View {
        Menu("My menu") {
            Button("Regular Button") {
                
            }
            
            ControlGroup("Numbers") {
                
                Button("One") {
                    
                }
                
                Button("two") {
                    
                }
                
                Button("Three") {
                    
                }
                
            }
           
            ControlGroup("How are you?") {
                
                Button("Good") {
                    
                }
                
                Button("Bad") {
                    
                }
                
                Button("Not bad") {
                    
                }
                
            }
           
            
            
        }
    }
}

#Preview {
    ControlGroupMenuBootcamp()
}
