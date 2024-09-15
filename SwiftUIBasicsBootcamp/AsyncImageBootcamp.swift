//
//  AsyncImageBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 15.09.2024.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    var url = URL(string: "https://picsum.photos/200")
    
    var body: some View {
        // phases
        /*
         case empty -> No image is loaded.
         case success -> (Image) An image succesfully loaded.
         case failure(any Error) -> An image failed to load with an error.
         */
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let returnedImage):
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
            case .failure:
                Image(systemName: "questionmark")
            default:
                Image(systemName: "questionmark")
            }
            
        }
        
//        AsyncImage(url: url) { returnedImage in
//            returnedImage
//                .resizable()
//                .scaledToFit()
//                .frame(width: 150, height: 150)
//        } placeholder: {
//            ProgressView()
//        }

    }
}

#Preview {
    AsyncImageBootcamp()
}
