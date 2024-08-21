//
//  IconsBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 21.08.2024.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus") // -> sfSymbols
            .renderingMode(.original) // -> use the symbol w/ original colors
            .resizable() // -> if trying to change size w/ frame use this.
            //.font(.largeTitle) // -> update sizes automaticlly for all iphones
            //.font(.system(size: 100))
            //.aspectRatio(contentMode: .fit)
            //.scaledToFit()
            .scaledToFill()
            //.foregroundStyle(Color.red)
            .frame(width: 100, height: 100)
            //.clipped() // -> to cut the part out of the frame.
    }
}

#Preview {
    IconsBootcamp()
}
