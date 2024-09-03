//
//  StepperBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 3.09.2024.
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State var stepperValue: Int = 10
    @State var widhtIncrement: CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .font(.headline)
                .padding()
                .background(Color.pink.opacity(0.3))
                .cornerRadius(15)
                .padding()
                
            Spacer()
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + widhtIncrement, height: 100)
            
            Stepper("Stepper2") {
                // increment func
                incrementWidht(amount: 50)
            } onDecrement: {
                // decrement func
                incrementWidht(amount: -50)
            }
            .padding(50)
            

            
        }
    }
    
    func incrementWidht(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widhtIncrement += amount
        }
        
    }
}

#Preview {
    StepperBootcamp()
}
