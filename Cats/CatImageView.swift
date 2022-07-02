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
