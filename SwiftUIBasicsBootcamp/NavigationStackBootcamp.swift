//
//  NavigationStackBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 26.09.2024.
//

import SwiftUI

class NavigationCoordinator: ObservableObject {
    
    enum NavigationDestination: Hashable {
        case navigationStackBootcamp
        case secondView
        case thirdView
    }

    @Published var navigationStack: [NavigationDestination] = []
    
    func navigate(to destination: NavigationDestination) {
        navigationStack.append(destination)
    }
    
    func popToRoot() {
        navigationStack.removeLast(navigationStack.count)
    }
}


struct NavigationStackBootcamp: View {
    
    @StateObject var coordinator = NavigationCoordinator()
    
    var body: some View {
        NavigationStack(path: $coordinator.navigationStack) {
            ZStack {
                // background
                Color.green
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    VStack {
                        Spacer()
                        Button {
                            coordinator.navigate(to: .secondView)
                        } label: {
                            Text("to SecondScreen")
                                .foregroundStyle(Color.white)
                                .frame(maxWidth: .infinity)
                                .frame(height: 55)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .padding()
                        }

                    }
                }
                .navigationTitle("NavigationStack Bootcamp")
                .navigationDestination(for: NavigationCoordinator.NavigationDestination.self) { destination in
                    switch destination {
                    case .navigationStackBootcamp:
                        NavigationStackBootcamp()
                    case .secondView:
                        SecondScreenn()
                    case .thirdView:
                        thirdScreen()
                    }
                }
            }
        }
        .environmentObject(coordinator)
        
    }
}

struct SecondScreenn: View {
    
    @EnvironmentObject var coordinator: NavigationCoordinator
    
    var body: some View {
        Button("to third Screen") {
            coordinator.navigate(to: .thirdView)
        }
    }
}

struct thirdScreen: View {
    
    @EnvironmentObject var coordiantor: NavigationCoordinator
    
    var body: some View {
        Button("Back to root") {
            coordiantor.popToRoot()
        }
    }
}

#Preview {
    NavigationStackBootcamp()
}
