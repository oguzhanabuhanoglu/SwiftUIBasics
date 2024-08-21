//
//  Background&OverlayBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 21.08.2024.
//

import SwiftUI

struct Background_OverlayBootcamp: View {
    
    // Overlays very similar with backgorunds except they go on top of each other instead of behind.
    
    var body: some View {
        
        // Example usage
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))],
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100)
                // !! something wrong with color literal inside of shadow 
                    .shadow(color:  Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)) , radius: 10, x: 0.0, y: 10)
                    .overlay(alignment: .bottomTrailing, content: {
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 35, height: 35)
                            .shadow(color:  Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)) , radius: 10, x: 5, y: 5)
                            .overlay {
                                Text("6")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            }
                    })
                    
            )
        
        // Backgrounds return a view so we can use any view for backgrounds. Not only colors.
        /*Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(
                Circle()
                    .fill(LinearGradient(colors: [Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)) ], startPoint: .leading, endPoint: .trailing))
                    .frame(width: 100, height: 100)
            )
            .background(
                Circle()
                    .fill(LinearGradient(colors: [Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)), Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))], startPoint: .leading, endPoint: .trailing))
                    .frame(width: 120, height: 120)
            )*/
        
    }
}

#Preview {
    Background_OverlayBootcamp()
}
