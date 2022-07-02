//
//  CatImageView.swift
//  Cats
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 2/7/22.
//

import SwiftUI

struct CatImageView: View {
    
    @ObservedObject var catImageManger = CatImageManager()
    
    var body: some View {
        VStack {
            if let image = catImageManger.image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                Button("Another one") {
                    catImageManger.getCatImage()
                }
            } else {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle())
            }
        }
        .onAppear {
            catImageManger.getCatImage()
        }
    }
}

struct CatImageView_Previews: PreviewProvider {
    static var previews: some View {
        CatImageView()
    }
}
