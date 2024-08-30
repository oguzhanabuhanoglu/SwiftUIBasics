//
//  ListBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 30.08.2024.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] =  [
        "apple", "orange", "banana", "watermelon"
    ]
    
    @State var veggies: [String] = [
        "tomato", "patato", "carrot"
    ]
    
    
    var body: some View {
        NavigationView {
            listView
                .accentColor(.green)
                .listStyle(DefaultListStyle())
                .navigationTitle("Grocery List")
                // this edit button is an convenient built-in button
                //.navigationBarItems(leading: EditButton()) //--> deprecated
                .toolbar{
                    ToolbarItem(placement: .topBarLeading) {
                        EditButton()
                    }
                
                    ToolbarItem(placement: .topBarTrailing) {
                        addButton
                    }
                }
            }
            .accentColor(.red)
        
    }
    
    var listView: some View {
        List {
            Section(header: Text("Fruits")) {
                ForEach(fruits, id: \.self) { fruit in
                    Text(fruit.capitalized)
                        .foregroundStyle(Color.white)
                        .font(.subheadline)
                        .padding()
                        .background(Color.gray.cornerRadius(15))
                }
                .onDelete(perform: delete)
                .onMove(perform: move)
                
            }
            
            Section {
                ForEach(veggies, id: \.self) { veggie in
                    Text(veggie.capitalized)
                        .foregroundStyle(Color.green)
                        .font(.title3)
                        .fontWeight(.bold)
                }
            } header: {
                Text("Veggies")
            }
        }
    }
    
    var addButton: some View {
        Button("Add", action: add)
    }
    
    func add() {
        fruits.append("peach")
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    
    func move(indicies: IndexSet, newOffset: Int ) {
        fruits.move(fromOffsets: indicies, toOffset: newOffset)
    }
}

#Preview {
    ListBootcamp()
}
