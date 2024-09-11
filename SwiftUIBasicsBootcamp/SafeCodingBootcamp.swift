//
//  SafeCodingBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 11.09.2024.
//

import SwiftUI

struct SafeCodingBootcamp: View {
    
    @State var displatText: String? = nil
    @State var isLoading: Bool = false
    
    // Make a change between this two to see how loadData func work.
    //@State var currentUserID: String? = nil
    @State var currentUserID: String? = "user123"
    
    
    var body: some View {
        NavigationView(content: {
            VStack {
                Text("Here we are practicin safe code!")
                // Text(displatText) // that is going to get an error. Don't use "!" for safe coding.
                if let text = displatText {
                    Text(text)
                        .font(.title)
                }
                
                if isLoading == true {
                    ProgressView()
                }
                
                Spacer()
            }
            .onAppear(perform: {
                loadData()
                //loadData2()
            })
            .navigationTitle("Safe Coding")
        })
    }
    
    func loadData() {
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displatText = "This is the new data! UserID: \(userID)"
                isLoading = false
            }
        } else {
            displatText = "Error: There is no userID"
        }
    }
    
    // Same function with loadData but this one use guard let instead of if let.
    func loadData2() {
        guard let userID = currentUserID else {
            displatText = "Error. There is no userID"
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displatText = "This is new data! UserID: \(userID)"
            isLoading = false
        }
    }
}

#Preview {
    SafeCodingBootcamp()
}
