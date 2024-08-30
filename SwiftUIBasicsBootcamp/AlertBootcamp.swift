//
//  AlertBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 30.08.2024.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var backgroundColor: Color = .yellow
    @State var showAlert: Bool = false
    @State var alertTitle: String = ""
    @State var alertMessage: String = ""
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack {
                Button("BUTTON 1") {
                    alertTitle = "Button 1 clicked"
                    alertMessage = "message 1"
                    showAlert.toggle()
                }
                .padding()
                .background(Color.white.cornerRadius(15))
                .padding()
                
                Button("BUTTON 2") {
                    alertTitle = "Button 2 clicked"
                    alertMessage = "message 2"
                    showAlert.toggle()
                }
                .padding()
                .background(Color.white.cornerRadius(15))
                .padding()
            }
            .alert(isPresented: $showAlert, content: {
                createAlert()
            })
        }
    }
    
    func createAlert() -> Alert {
        return Alert(title: Text(alertTitle),
                     message: Text(alertMessage),
                     dismissButton: .default(Text("OK")))
    }
}

#Preview {
    AlertBootcamp()
}
