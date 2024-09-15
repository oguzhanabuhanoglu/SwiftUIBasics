//
//  BackgroundMaterialsBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 15.09.2024.
//

import SwiftUI

struct BackgroundMaterialsBootcamp: View {
    var body: some View {
        VStack {
            
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 50, height: 4)
                    .padding()
                
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .frame(height: 350)
            .background(.ultraThinMaterial) // new w/ iOS 15
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            Image("me")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        )
    }
}

#Preview {
    BackgroundMaterialsBootcamp()
}
