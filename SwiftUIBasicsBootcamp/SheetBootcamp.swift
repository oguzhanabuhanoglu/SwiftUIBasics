//
//  SheetBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 29.08.2024.
//

import SwiftUI

// Sheet is basicly a transition from one screen to another screen
// pop-up sheets

struct SheetBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                    .foregroundStyle(.green)
                    .font(.headline)
                    .padding()
                    .background(Color.white.cornerRadius(10))
                    
            })
            // isPresented gets a binding boolean into it.
            .sheet(isPresented: $showSheet, content: {
                // do not use conditional logic in sheet, its an error reason.
                // there are ways to use multiple sheets in one screen but its little advance, we'll see.
                SecondScreen()
            })
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red.ignoresSafeArea()
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.red)
                    .font(.title)
                    .padding()
                    .background(Color.white.cornerRadius(10))
                    .padding()
            })
        }
    }
}

#Preview {
    SheetBootcamp()
    //SecondScreen()
}
