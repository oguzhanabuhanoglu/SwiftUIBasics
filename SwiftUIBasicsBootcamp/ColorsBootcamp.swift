//
//  ColorsBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 21.08.2024.
//

import SwiftUI

struct ColorsBootcamp: View {
    
    // We can find all the colors and specific colors with hex code with using colorLiteral
    
    let myColor = Color(#colorLiteral(red: 0.4007861614, green: 0.5416567326, blue: 0, alpha: 1)) //#colorLiteral
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(//Color.red
                
                  //(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                
                 //UIKit Colors
                   //Color(uiColor: UIColor.secondarySystemBackground)
                
                // Add a color set into assets
                   Color("AssetColor")
             )
            .frame(width: 300, height: 200)
            .shadow(color: Color("AssetColor"), radius: 10, x: 20, y: -20)
        }
}

#Preview {
    ColorsBootcamp()
}
