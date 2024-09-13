//
//  ProfileView.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 13.09.2024.
//

import SwiftUI

struct ProfileView: View {
    
    // appStorage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                
            Text(currentUserName ?? "Name")
            Text("This user is \(currentUserAge ?? 0) years old")
            Text(currentUserGender ?? "unknown")
            
            Text("SIGN OUT")
                .foregroundStyle(.white)
                .font(.headline)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.purple)
                .cornerRadius(10)
                .onTapGesture {
                    signOut()
                }
                
        }
        .font(.title)
        .foregroundStyle(.purple)
        .padding()
        .padding(.vertical, 40)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 10)
        
    }
    
    func signOut() {
        currentUserName = nil
        currentUserAge = nil
        currentUserGender = nil
        withAnimation(.spring()) {
            currentUserSignedIn = false
        }
        
    }
}

#Preview {
    ProfileView()
}
