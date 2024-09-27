//
//  ObsevableMacroBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 27.09.2024.
//

import SwiftUI

// MARK: ObservableObject to Observable Macro

@Observable class ObsevableViewModel /*: ObservableObject*/ {
    
//    @Published var text: String = "Some title"
    var text: String = "Some title"
    
    //to make it not public
    @ObservationIgnored var value: String = ""

}

struct ObsevableMacroBootcamp: View {
    
//    @StateObject var viewModel = ObsevableViewModel()
    @State var viewModel = ObsevableViewModel()
    
    var body: some View {
        VStack(spacing: 40){
            Button(viewModel.text) {
                viewModel.text = "Changed"
            }
            
            Second(viewModel: viewModel)
            Third()
            
        }
//        .environmentObject(viewModel)
        .environment(viewModel)
    }
}

struct Second: View {
    
//    @ObservedObject var viewModel: ObsevableViewModel
    @Bindable var viewModel: ObsevableViewModel
    
    var body: some View {
        Button(viewModel.text) {
            viewModel.text = "Changed 2"
        }
    }
}

struct Third: View {
    
//    @EnvironmentObject var viewModel: ObsevableViewModel
    @Environment(ObsevableViewModel.self) var viewModel
    
    var body: some View {
        Button(viewModel.text) {
            viewModel.text = "Changed 3"
        }
    }
}

#Preview {
    ObsevableMacroBootcamp()
}
