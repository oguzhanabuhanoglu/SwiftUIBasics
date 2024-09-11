//
//  ViewModelBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 11.09.2024.
//

import SwiftUI

// MARK: MODEL
struct Fruits: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

// MARK: VIEWMODEL
class FruitViewModel: ObservableObject {
    
    /*
    // MARK: 2) But we can not use state in class. Published is another property wrapper which we can do crazy thing with. But for a now we just using it like a state. it's make the var observable.
     */
    @Published var fruitArray: [Fruits] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        let fruit1 = Fruits(name: "apple", count: 5)
        let fruit2 = Fruits(name: "orange", count: 44)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(wallDeadline: .now() + 3) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.isLoading = false
        }
        
    }
    
    func delete(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

// MARK: VIEW
struct ViewModelBootcamp: View {
    
    /*
    // MARK: 1) we moved this array into FruitViewModel to use MVVM.
    //@State var FruitArray: [Fruits] = []
    
    // MARK: 3) Then we should reach to FruitViewModel to use all of our function and variables. Also we should use @ObservedObject to reach ObservableObject / StateObject Class. Now View is clenaer with MVVM Arc.
        // @StateObject -> Use this on Creation / Init
        // @ObservedObject -> Use this for Subviews and second or third screens
     */
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView(content: {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack(spacing: 15) {
                            Text("\(fruit.count)")
                                .foregroundStyle(.red)
                            Text(fruit.name.capitalized)
                                .font(.headline)
                        }
                    }
                    .onDelete(perform: fruitViewModel.delete)
                }
                
            }
            .listStyle(GroupedListStyle())
            .navigationBarItems(trailing: NavigationLink(destination: {
                RandomScreen(vm: fruitViewModel)
            }, label: {
                Image(systemName: "arrow.right")
            }))
            .navigationTitle("Fruits List")
        })
    }
    
}

struct RandomScreen: View {
    
    @ObservedObject var vm: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack {
                ForEach(vm.fruitArray) { fruit in
                    Text(fruit.name)
                        .foregroundStyle(.white)
                }
            }
        }
    }
}

#Preview {
    ViewModelBootcamp()
}
