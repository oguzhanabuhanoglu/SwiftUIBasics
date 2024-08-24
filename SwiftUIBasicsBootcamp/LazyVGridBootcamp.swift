//
//  LazyVGridBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 24.08.2024.
//

import SwiftUI

struct LazyVGridBootcamp: View {
    
    
    // That spacing between grid is the spacing of columns
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 2, alignment: nil),
        GridItem(.flexible(), spacing: 2, alignment: nil),
        GridItem(.flexible(), spacing: 2, alignment: nil)
    ]
    
    var body: some View {
        
        ScrollView {
            
            Rectangle()
                .fill(Color.orange)
                .frame(height: 400)
                
            
            LazyVGrid(columns: columns,
                      alignment: .center,
                      // this spacing is between every item in a column
                      spacing: 2,
                      pinnedViews: [.sectionHeaders],
                      content: {
                Section {
                    ForEach(1..<49) { index in
                        Rectangle()
                            .fill(Color.red)
                            .frame(height: 120)
                    }
                } header: {
                    Text("Section 1")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .background(Color.red)
                        .padding()
                }
                
                Section {
                    ForEach(1..<49) { index in
                        Rectangle()
                            .fill(Color.green)
                            .frame(height: 120)
                    }
                } header: {
                    Text("Section 2")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .padding()
                }

               
            })
        }
    }
}

#Preview {
    LazyVGridBootcamp()
}
