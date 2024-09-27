//
//  NavigationSplitView.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 27.09.2024.
//

import SwiftUI

// NavigationSplitView -> iPas, MacOS, VisionOS

struct CustomNavigationSplitView: View {
    
    @State private var visibility: NavigationSplitViewVisibility = .all
    @State private var selectedCategory: FoodCategory? = nil
    @State private var selectedFruit: Fruitss? = nil
    
    var body: some View {
        
        NavigationSplitView(columnVisibility: $visibility) {
            // Sol kolon (category listesi)
            List {
                ForEach(FoodCategory.allCases, id: \.rawValue) { category in
                    Button(category.rawValue.capitalized) {
                        selectedCategory = category
                    }
                }
            }
            .navigationTitle("Categories")
        } content: {
            // Orta kolon (fruits listesi veya boş görünüm)
            if let selectedCategory {
                Group {
                    switch selectedCategory {
                    case .vegetables:
                        EmptyView()
                    case .fruits:
                        List { 
                            ForEach(Fruitss.allCases, id: \.rawValue) { fruit in
                                Button(fruit.rawValue.capitalized) {
                                    selectedFruit = fruit
                                }
                            }
                        }
                    case .meats:
                        EmptyView()
                    }
                }
                .navigationTitle(selectedCategory.rawValue.capitalized)
            } else {
                Text("Select a fruit")
                    .font(.largeTitle)
                    .navigationTitle("Detail")
            }
        } detail: {
            // Sağ kolon (seçilen meyve detayı)
            if let selectedFruit {
                Text("You selected: \(selectedFruit.rawValue.capitalized)")
                    .font(.largeTitle)
                    .navigationTitle(selectedFruit.rawValue.capitalized)
            } else {
                Text("Select a fruit")
                    .font(.largeTitle)
                    .navigationTitle("Detail")
            }
        }
    }
}

// Enumlar (categories and fruits)
enum FoodCategory: String, CaseIterable {
    case vegetables, fruits, meats
}

enum Fruitss: String, CaseIterable {
    case apple, banana, orange
}

#Preview {
    CustomNavigationSplitView()
}
