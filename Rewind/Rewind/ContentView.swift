//
//  ContentView.swift
//  Rewind
//
//  Created by Ryan Cummins on 3/20/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            PlayerView()
                .tabItem {
                    Label("Player", systemImage: "play.circle.fill")
                }
            
            Text("Inbox")
                .tabItem {
                    Label("Inbox", systemImage: "tray.circle.fill")
                }
            
            Text("Library")
                .tabItem {
                    Label("Library", systemImage: "books.vertical.circle.fill")
                }
            
            Text("Search")
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass.circle.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
