//
//  ContentUnavailableViewBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 27.09.2024.
//

import SwiftUI

struct ContentUnavailableViewBootcamp: View {
    var body: some View {
        ContentUnavailableView("No internet connection!",
                               systemImage: "wifi.slash",
                               description: Text("Please check your internet connection and try again."))
        
        ContentUnavailableView.search
        
        ContentUnavailableView.search(text: "user")
    }
}

#Preview {
    ContentUnavailableViewBootcamp()
}
