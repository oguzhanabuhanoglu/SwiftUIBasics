//
//  GradientsBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 21.08.2024.
//

import SwiftUI

struct GradientsBootcamp: View {
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //Color.red
                
                /*LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]),
                               startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/,
                               endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)*/
                
                RadialGradient(colors: [Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)), Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))],
                               center: .topLeading,
                               startRadius: 60,
                               endRadius: 200)
                
                /*AngularGradient(colors: [Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)), Color(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1))],
                                center: .center,
                                angle: .degrees(180 + 45))*/
                
                
                
                
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientsBootcamp()
}
