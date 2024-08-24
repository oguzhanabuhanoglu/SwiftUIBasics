//
//  ButtonBoorcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 24.08.2024.
//

import SwiftUI

struct ButtonBootcamp: View {
    
    @State var string = "Hello Word!"
    
    var body: some View {
        
        VStack {
            
            Text(string)
                .padding()
                .padding(.bottom, 30)
            
            
            Button("Press me") {
                string = "Pressed Button 1"
            }
            .padding()
            
            
            Button {
                string = "Pressed Button 2"
            } label: {
                Text("SAVE")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(15)
                            .shadow(radius: 10)
                            
                    )
            }
            .padding()
           
            
            Button {
                string = "Pressed Button 3"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 70, height: 70)
                    .shadow(radius: 20)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .foregroundStyle(Color.red)
                            .font(.largeTitle)
                            .shadow(color: .red, radius: 20 , x: 5, y: -10)
                    }
            }
            .padding()
            
            
            Button {
                string = "Pressed Button 4"
            } label: {
                Text("FINISH")
                    .foregroundStyle(Color.gray)
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .fill(Color.white)
                            .stroke(Color.gray, lineWidth: 3)
                    )
                
            }
            .padding()
            
            

        }
       
    }
}

#Preview {
    ButtonBootcamp()
}
