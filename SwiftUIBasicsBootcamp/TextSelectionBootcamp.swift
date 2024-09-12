//
//  TextSelectionBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 12.09.2024.
//

import SwiftUI

struct TextSelectionBootcamp: View {
    var body: some View {
        Text("Hello, World! With this modifier our users can select the text and copy it to share or whatever. ")
            .padding()
            .textSelection(.enabled)
    }
}

#Preview {
    TextSelectionBootcamp()
}
