//
//  NativePopoverBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 27.09.2024.
//

import SwiftUI

struct NativePopoverBootcamp: View {
    
    @State private var showPopover: Bool = false
    @State private var feedbackOptions: [String] = [
        "Very good",
        "Average",
        "Very bad"
    ]
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            
            VStack {
                
                Button("Provide Feedback") {
                    showPopover.toggle()
                }
                .padding()
                .background(Color.yellow)
                .cornerRadius(10)
                .popover(isPresented: $showPopover, attachmentAnchor: .point(.top)) {
                    ScrollView {
                        VStack(alignment: .leading, spacing: 12) {
                            ForEach(feedbackOptions, id: \.self) { option in
                                Button(option) {
                                    
                                }
                                if option != feedbackOptions.last {
                                    Divider()
                                }
                            }
                        }
                        .padding(20)
                        .presentationCompactAdaptation(.popover)
                        
                        // we can also create a sheet or fullScreenCover with this modifier with iOS 17.
                        //                    .presentationCompactAdaptation(.fullScreenCover)
                        //                    .presentationCompactAdaptation(.sheet)
                    }
                    
                  
                    
                   
                    
                }
            }
        }
    }
}

#Preview {
    NativePopoverBootcamp()
}
