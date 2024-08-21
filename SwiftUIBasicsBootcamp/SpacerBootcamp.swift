//
//  SpacerBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 22.08.2024.
//

import SwiftUI

struct SpacerBootcamp: View {
    
    // the spacer extends as far as possible and pushes our objects.
    
    var body: some View {
        
        VStack {
            HStack {
                Image(systemName: "xmark")
                
                Spacer()
                // to show where spacer is
                    .frame(height: 5)
                    .background(Color.orange)
                
                Image(systemName: "gear")
            }
            .font(.title)
            .padding(.horizontal)
            
            Spacer()
                .frame(width: 5)
                .background(Color.orange)
            
            Rectangle()
                .fill()
                .frame(width: .infinity, height: 55)
            
        }
        
    }
}

#Preview {
    SpacerBootcamp()
}
