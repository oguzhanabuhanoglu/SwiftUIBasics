//
//  ImagesBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 21.08.2024.
//

import SwiftUI

struct ImagesBootcamp: View {
    var body: some View {
        Image("me")
            //.renderingMode(.template) // -> to set color to image
            .resizable()
            .scaledToFill()
            //.scaledToFill()
            .frame(width: 200, height: 200)
            //.clipped()
            //.cornerRadius(100) // make a circle image (widht/2)
            .clipShape( 
                Circle()
                //RoundedRectangle(cornerRadius: 0)
            )
            
    }
}

#Preview {
    ImagesBootcamp()
}
