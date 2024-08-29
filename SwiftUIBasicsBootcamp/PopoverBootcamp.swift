//
//  PopoverBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 29.08.2024.
//

import SwiftUI

// sheets
// animations
// transitions
// this bootcamp for train what we learn.

struct PopoverBootcamp: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            
            VStack {
                Button("BUTTON") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                .foregroundStyle(.white)
                Spacer()
            }
            // METHOD 1 -- SHEET
//            .sheet(isPresented: $showNewScreen, content: {
//                NewScreen()
//            })
            
            
            
            // METHOD 2 -- TRANSITION
//            ZStack {
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.easeInOut)
//                        
//                }
//            }
//            .zIndex(0.2) // this one to see .easeout animation because its disseappear if we do not use this
            
            
            
            //METHOD 3 -- ANIMATIONS
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
            
            
        }
    }
}

struct NewScreen: View {
    
    //@Environment(\.presentationMode) var mode
    @Binding var showNewScreen: Bool
    
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            Color.green.ignoresSafeArea()
            
            VStack {
                Button(action: {
                    //mode.wrappedValue.dismiss()
                    showNewScreen.toggle()
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(.green)
                        .padding()
                        .background(Color.white.cornerRadius(10))
                        .padding()
                        
                    
                })
            }
        }
    }
}

#Preview {
    PopoverBootcamp()
    //NewScreen()
}
