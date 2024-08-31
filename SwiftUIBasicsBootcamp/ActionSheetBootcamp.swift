//
//  ActionSheetBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 31.08.2024.
//

import SwiftUI

// it works like alert. The difference is alert pops up middle of the screen, action sheets pops up from bottom.

struct ActionSheetBootcamp: View {
    
    @State var showActionSheet: Bool = false
    @State var postType: Types = .otherPost
    
    enum Types {
        case myPost
        case otherPost
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10){
                postView
                postView
            }
        }
    }
    
    var postView: some View {
        VStack {
            HStack {
                Circle()
                    .fill()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button {
                    postType = .myPost
                    //postType = .otherPost
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                        .foregroundStyle(Color.primary)
                }
                .actionSheet(isPresented: $showActionSheet, content: {
                    createActionSheet()
                })
            }
            .padding()
            
            Rectangle()
                .fill()
                .aspectRatio(1, contentMode: .fit)
            
            Spacer()
        }
    }
    
    func createActionSheet() -> ActionSheet {
        let title = Text("What would you like to do ?")
        let message = Text("This is the message..")
        
        let button1: ActionSheet.Button = .default(Text("Share"))
        let button2 : ActionSheet.Button = .destructive(Text("Report"))
        let button3 : ActionSheet.Button = .destructive(Text("Delete"))
        let button4: ActionSheet.Button = .cancel()
        
        switch postType {
        case .myPost:
            return ActionSheet(title: title,
                               message: message,
                               buttons: [button1, button2, button3, button4])
        case .otherPost:
            return ActionSheet(title: title,
                               message: message,
                               buttons: [button1, button2, button4])
        }
    }
    
}

#Preview {
    ActionSheetBootcamp()
}
