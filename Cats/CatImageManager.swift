//
//  CatImageManager.swift
//  Cats
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 2/7/22.
//

import Foundation
import SwiftUI

class CatImageManager: ObservableObject {
    
    @Published var image: UIImage?
    
    func getCatImage() {
        let apiURL = URL(string: "https://cataas.com/c")!
        let request = URLRequest(url: apiURL)
        
        image = nil
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                DispatchQueue.main.async {
                    self.image = UIImage(data: data)
                }
            }
        }
        .resume()
    }
}
