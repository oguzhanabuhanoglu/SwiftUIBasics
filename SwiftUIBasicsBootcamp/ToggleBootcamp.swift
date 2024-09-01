//
//  ToggleBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 1.09.2024.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Status:")
                    .font(.headline)
                Text(toggleIsOn ? "Online" : "Offline")
            }
            
            Toggle(isOn: $toggleIsOn,
                   label: {
                Text("Change Status")
            })
            .toggleStyle(SwitchToggleStyle(tint: Color.red))
            .padding(.horizontal, 30)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ToggleBootcamp()
}
