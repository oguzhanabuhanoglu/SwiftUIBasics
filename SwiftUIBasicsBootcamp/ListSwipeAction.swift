//
//  ListSwipeAction.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 15.09.2024.
//

import SwiftUI

struct ListSwipeAction: View {
    
    @State var fruits: [String] = [
        "apple", "banana", "watermelon"
    ]
    var body: some View {
        List {
            ForEach(fruits, id: \.self) { fruit in
                Text(fruit)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button("Archive") {
                            
                        }
                        .tint(.yellow)
                        Button("Save") {
                            
                        }
                        .tint(.green)
                        Button("Junk") {
                            
                        }
                        .tint(.blue)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                        Button("Share") {
                            
                        }
                        .tint(.yellow)
                    }
            }
            //.onDelete(perform: delete)
        }
        
    }
    
    func delete(indexSet: IndexSet) {
        
    }
}

#Preview {
    ListSwipeAction()
}
