//
//  FocusStateBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 26.09.2024.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum onBoardingFields: Hashable {
        case username
        case password
    }
    
    @FocusState private var fieldInFocus: onBoardingFields?
    
    //@FocusState var usernameInFocus: Bool
    @State var username: String = ""
    //@FocusState var passwordInFocus: Bool
    @State var password: String = ""
    
    var body: some View {
        VStack {
            TextField("Username", text: $username)
                .focused($fieldInFocus, equals: .username)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
                .padding()
            
            SecureField("Password", text: $password)
                .focused($fieldInFocus, equals: .password)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
                .padding()
                .onSubmit {
                    if password.isEmpty {
                        fieldInFocus = .password
                    }
                }
            
            Button("Sign In") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if usernameIsValid && passwordIsValid {
                    print("signed up")
                } else if !usernameIsValid && !passwordIsValid {
                    fieldInFocus = .username
                } else if usernameIsValid  {
//                    usernameInFocus = false
//                    passwordInFocus = true
                    fieldInFocus = .password
                } else if passwordIsValid  {
//                    usernameInFocus = true
//                    passwordInFocus = false
                    fieldInFocus = .username
                }
            }
            
            
        }
    }
}

#Preview {
    FocusStateBootcamp()
}
