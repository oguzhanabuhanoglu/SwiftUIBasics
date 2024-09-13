//
//  OnBoardingView.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 13.09.2024.
//

import SwiftUI

struct OnBoardingView: View {
    
    // Onboarding States:
    /*
     0 - Welcome screen
     1 - Add name
     2 - Add age
     3 - Add gender
     */
    @State var onBoardingState: Int = 0
    let transition: AnyTransition = .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))
    
    // for the alert
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    // onbording inputs
    @State var nameText: String = ""
    @State var age: Double = 30
    @State var gender: String = "Female"
    
    // appStorage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            // content layer
            ZStack {
                switch onBoardingState {
                case 0:
                    welcomSection
                        .transition(transition)
                case 1:
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3:
                    addGenderSection
                        .transition(transition)
                default:
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.green)
                }
            }
            
            // buttons layer
            VStack {
                Spacer()
                bottomButton
            }
            .padding()
        }
        .alert(isPresented: $showAlert, content: {
            return Alert(title: Text(alertTitle))
        })
    }
}

#Preview {
    OnBoardingView()
        .background(Color.purple)
}

// MARK: COMPONENTS
extension OnBoardingView {
    
    private var bottomButton: some View {
        Text(onBoardingState == 0 ? "SIGN UP" : onBoardingState == 3 ? "FINISH" : "NEXT")
            .font(.headline)
            .foregroundStyle(.primary)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(10)
            .animation(nil)
            .onTapGesture {
                handleNextButtonPressed()
            }
    }
    
    private var welcomSection: some View {
        VStack(spacing: 40, content: {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundStyle(.white)
            Text("Find your match.")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .fontWeight(.semibold)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .foregroundStyle(.white)
                        .offset(y: 5)
                         , alignment: .bottom
                )
            Text("This is the #1 aoo finding your match online! In this tutorial we are practicing using AppSrotage and other SwiftUI teqniques.")
                .fontWeight(.medium)
                .foregroundStyle(.white)
            Spacer()
            Spacer()
        })
        .multilineTextAlignment(.center)
        .padding(30)
        
    }
    
    private var addNameSection: some View {
        VStack(spacing: 40, content: {
            Spacer()
            Text("What is your name ?")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .fontWeight(.semibold)
            TextField("Your name here...", text: $nameText)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(10)
            Spacer()
            Spacer()
        })
        .padding(30)
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 20, content: {
            Spacer()
            Text("What is your age ?")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .fontWeight(.semibold)
            Text(String(format: "%.0f", age))
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            Slider(value: $age, in: 18...100, step: 1)
                .accentColor(.white)
            Spacer()
            Spacer()
        })
        .padding(30)
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 1, content: {
            Spacer()
            Text("What is your gender ?")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .fontWeight(.semibold)
            Picker(selection: $gender) {
                Group {
                    Text("Male").tag("Male")
                    Text("Female").tag("Female")
                    Text("Non-Binary").tag("Non-Binary")
                }
                .foregroundStyle(.white)
                .fontWeight(.semibold)
                                
            } label: {
                Text("Select a gender")
            }
            
            .pickerStyle(WheelPickerStyle())
         
               

            Spacer()
            Spacer()
        })
        .padding(30)
    }
}

// MARK: FUNCTIONS
extension OnBoardingView {
    func handleNextButtonPressed() {
        
        switch onBoardingState {
        case 1:
            guard nameText.count >= 3 else {
                createAlert(title: "Your name must be at least 3 character long! 🧐")
                return
            }
        default:
            break
        }
        
        if onBoardingState == 3 {
            // sign in
            signIn()
        } else {
            withAnimation(.spring()) {
                onBoardingState += 1
            }
        }
        
    }
    
    func createAlert(title: String) {
        alertTitle = title
        showAlert.toggle()
    }
    
    func signIn() {
        // save the user infos into appStorage
        currentUserName = nameText
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring()) {
            currentUserSignedIn = true
        }
        
    }
}
