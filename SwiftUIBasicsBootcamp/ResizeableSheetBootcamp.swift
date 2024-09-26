//
//  ResizeableSheetBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 26.09.2024.
//

import SwiftUI

struct ResizeableSheetBootcamp: View {
    
    @State private var showsSheet: Bool = false
    @State private var detents: PresentationDetent = .medium
    
    var body: some View {
        
        Button("Click me!") {
            showsSheet.toggle()
        }
        .sheet(isPresented: $showsSheet) {
            SheetView()
                //.presentationDetents([.medium, .large])
                //.presentationDetents([.fraction(0.3), .fraction(0.7)])
                .presentationDetents([.medium, .large], selection: $detents)
//                .interactiveDismissDisabled()
//                .presentationDragIndicator(true)
        }
    }
}

struct SheetView: View {
    
    var body: some View {
        ZStack {
            Color.indigo.ignoresSafeArea()
        }
    }
}

#Preview {
    ResizeableSheetBootcamp()
}
