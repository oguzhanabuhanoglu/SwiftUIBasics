//
//  EnvironmentObjectBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 12.09.2024.
//

import SwiftUI

// if i have items to need to be use on bunch of different views @EnvironmentObject is so usefull. But i need to access that item ın 1 or 2 views i do not need to add it into environment. i can use just @StateObject and @ObservedObject

class ViewModel: ObservableObject {
    
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        //dataArray.append("iPad")
        dataArray.append(contentsOf: ["iPad", "iPhone", "Apple Watch", "Airpods"])
    }
}

struct EnvironmentObjectBootcamp: View {
    
    @StateObject var viewModel: ViewModel = ViewModel()
    
    var body: some View {
        
        NavigationView(content: {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink {
                        DetailsView(selectedItem: item)
                    } label: {
                        Text(item)
                    }

                }
            }
            .navigationTitle("Apple Devices")
        })
        // we put the viewModel in environment. That means we can access to viewModel directly in every view in this hierarcy.
        .environmentObject(viewModel)
    }
}

struct DetailsView: View {
    
    var selectedItem: String
    
    var body: some View {
        
        ZStack {
            // background
            Color.orange.ignoresSafeArea()
            
            // foreground
            NavigationLink {
                FinalView()
            } label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundStyle(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background()
                    .cornerRadius(30)
            }
        }
    }
}

struct FinalView: View {
    
    // i use environmentObject to access this viewModel which i put environment before under the navigationView.
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        ZStack {
            // background
            LinearGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)), Color(#colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1))]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .font(.largeTitle)
                .foregroundStyle(.white)
            }
           
        }
    }
}

#Preview {
    EnvironmentObjectBootcamp()
    //DetailsView(selectedItem: "iPad")
}
