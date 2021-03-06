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
                RoundedRectangle(cornerRadius: 10)
                    .fill(.linearGradient(Gradient(colors: [.mint, .indigo]), startPoint: .top, endPoint: .bottom))
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
                
                ZStack(alignment: .center) {
                    RingView()
                        .frame(width: 88, height: 88)
                    
                    Image(systemName: "play")
                        .resizable()
                        .frame(width: 44, height: 44)
                }
                
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
