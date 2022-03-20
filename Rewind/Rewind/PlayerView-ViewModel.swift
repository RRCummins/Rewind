//
//  PlayerView-ViewModel.swift
//  Rewind
//
//  Created by Ryan Cummins on 3/20/22.
//

import AVFoundation
import SwiftUI

extension PlayerView {
    class ViewModel: ObservableObject {
        @Published var coverImage: Image?
        @Published var imageURLString = ViewModel.advZoneFirstImageURL
        @Published var audioURLString = ViewModel.advZoneFirstAudioURL
        
        var audioPlayer: AVAudioPlayer?

        func playSound(sound: String, type: String) {
            if let path = Bundle.main.path(forResource: sound, ofType: type) {
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                    audioPlayer?.play()
                } catch {
                    print("ERROR")
                }
            }
        }
        
        func fetchImage(from url: String) {
//            guard let url = URL(string: url) else { return }
            
        }
        
        static var advZoneImageURL = "https://image.simplecastcdn.com/images/9ba52d4c-4e8c-4203-a3de-be89969671f2/d22eae6f-1f4f-4726-81d6-c364dad1a1e2/3000x3000/ethersea-cover.jpg?aid=rss_feed"
        
        static var advZoneFirstImageURL = "https://image.simplecastcdn.com/images/756be4b5-6f31-492d-8611-f7c8f29043c7/fe0d26c3-b7f5-4dda-90a4-3acf73c7331d/3000x3000/tazb-cover.jpg?aid=rss_feed"
        static var advZoneFirstAudioURL = "https://locator.simplecastcdn.com/e7ec86c9-5b4f-4c1c-af7b-0957921e175d/dcb5d4e2-c757-4b6b-ae0c-691b26f70e7a.mp3?aid=rss_feed&feed=cYQVc__c"
    }
}
