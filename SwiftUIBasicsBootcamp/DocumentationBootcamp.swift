//
//  DocumentationBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 4.09.2024.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    // --> i can see theese mark places on minimap.
    // MARK: PROPERTIES
    @State var fruits: [String] = [
        "apple", "orange", "banana"
    ]
    @State var showAlert: Bool = false
    
    // OGUZHAN - Folding descriptions - example:
    /*
        And this one is a mark for code foldin.
        I can write a full essay or documentation and i can keep it inside of these rows.
        I can close this row to click:
                command + option + left click
        theese buttons.
        I can use this documentation method all of the codes which has brackets.
     */
    
    // MARK: BODY
    var body: some View {
        NavigationView {
            ZStack {
                // background
                Color.green.ignoresSafeArea()
                
                // foreground
                foregroundLayer
                .navigationTitle("Documentation")
                .navigationBarItems(trailing:
                                        Button("ALERT", action: {
                                            showAlert.toggle()
                                        })
                )
                .alert(isPresented: $showAlert, content: {
                    createAlert(title: "This is alert !")
            })
            }
        }
    }
    
    // MARK: SUBVIEWS
    // this 3 back slashes add a summary to functions or subviews whatever we want.
    /// This a foreground layer that hold a scrollView.
    var foregroundLayer: some View {
        ScrollView {
            VStack {
                ForEach(fruits, id: \.self) { fruit in
                    Text(fruit.capitalized)
                        .font(.headline)
                }
            }
        }
    }
    
    // MARK: FUNCTIONS
    /// Gets an alert with a specified title. (Summary)
    ///
    /// This function creates an alert immediately. The alety will have a title based on the text parameter but it will NOT HAVE a message. (Description)
    ///
    ///```
    ///This is the way to creta mock data in documentation.
    /// createAlert("Hi") -> Alert(title: Text("Hi"))
    ///```
    ///
    /// - Parameter title: This is a title for an alert.
    /// - Returns: Returns an alert with a title.
    func createAlert(title: String) -> Alert {
        return Alert(title: Text(title))
    }
}

    // MARK: PREVİEW
#Preview {
    DocumentationBootcamp()
}



