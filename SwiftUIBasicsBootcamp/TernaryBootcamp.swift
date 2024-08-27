//
//  TernaryBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 27.08.2024.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isChange: Bool = false
    var body: some View {
        
        VStack {
            Button("Button: \(isChange.description) ") {
                isChange.toggle()
            }
            
            // we can use this instead of if else statment for nice and clean code.
            // isChange ? trueOption : falseOption
            RoundedRectangle(cornerRadius: isChange ? 25 : 0)
                .fill(isChange ? .red : .blue)
                .frame(width: isChange ? 200 : 30, height: isChange ? 200 : 500)
                
            Spacer()
        }
    }
}

#Preview {
    TernaryBootcamp()
}
