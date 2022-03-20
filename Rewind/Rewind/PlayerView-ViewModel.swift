//
//  PlayerView-ViewModel.swift
//  Rewind
//
//  Created by Ryan Cummins on 3/20/22.
//

import SwiftUI

extension PlayerView {
    class ViewModel: ObservableObject {
        @Published var coverImage: Image?
        @Published var urlString = "https://image.simplecastcdn.com/images/9ba52d4c-4e8c-4203-a3de-be89969671f2/d22eae6f-1f4f-4726-81d6-c364dad1a1e2/3000x3000/ethersea-cover.jpg?aid=rss_feed"
        
        
        func fetchImage(from url: String) {
//            guard let url = URL(string: url) else { return }
            
        }
        
    }
}
