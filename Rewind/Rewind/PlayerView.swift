//
//  PlayerView.swift
//  Rewind
//
//  Created by Ryan Cummins on 3/20/22.
//

import SwiftUI

struct PlayerView: View {
    @StateObject private var vm = ViewModel()
    
    
    var body: some View {
        VStack {
            Spacer()
            
            AsyncImage(url: URL(string: vm.imageURLString)) { image in
                image.resizable()
            } placeholder: {
                Color.mint
            }
            .frame(width: 300, height: 300)
            .clipShape(RoundedRectangle(cornerRadius: 10))

            Spacer()
            
            ZStack(alignment: .leading) {
                Capsule()
                    .frame(width: 300, height: 6)
                    .foregroundColor(.mint)
                Capsule()
                    .frame(width: 44, height: 6)
                    .foregroundColor(.indigo)
            }
            HStack(alignment: .center) {
                Image(systemName: "gobackward")
                    .resizable()
                    .frame(width: 56, height: 56)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .frame(width: 84, height: 84)
                
                Image(systemName: "goforward")
                    .resizable()
                    .frame(width: 56, height: 56)
            }
            
            Spacer()
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
