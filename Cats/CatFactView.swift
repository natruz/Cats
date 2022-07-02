//
//  CatFactView.swift
//  Cats
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 2/7/22.
//

import SwiftUI

struct CatFactView: View {
    
    @ObservedObject var catFactManager = CatFactManager()
    
    var body: some View {
        VStack {
            if let fact = catFactManager.fact {
                Text(fact.fact)
                    .padding()
            } else {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle())
            }
        }
        .onAppear {
            catFactManager.getCatFact()
        }
    }
}

struct CatFactView_Previews: PreviewProvider {
    static var previews: some View {
        CatFactView()
    }
}
