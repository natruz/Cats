//
//  ContentView.swift
//  Cats
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 2/7/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CatFactView()
                .tabItem {
                    Label("Facts", systemImage: "lightbulb")
                }
            CatImageView()
                .tabItem {
                    Label("Image", systemImage: "photo")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
