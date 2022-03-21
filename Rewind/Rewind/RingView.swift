//
//  RingView.swift
//  Rewind
//
//  Created by Ryan Cummins on 3/21/22.
//

import SwiftUI

struct RingView: View {
    @State private var size: CGFloat = 300
    @State private var color1 = Color.mint
    @State private var color2 = Color.indigo
    
    @State private var percentage = 0.85
    @State private var showText = false
    @State private var showBackgroundRing = false
    
    
    var body: some View {
        ZStack {
            if showBackgroundRing {
                Circle()
                    .stroke(Color.black.opacity(0.1), style: StrokeStyle(lineWidth: 5))
                    .frame(width: size, height: size)
            }
            
            Circle()
                .trim(from: (1.00-percentage), to: 1)
                .stroke(
                    LinearGradient(gradient: Gradient(colors: [color1, color2]), startPoint: .topTrailing, endPoint: .bottomLeading),
                    style: StrokeStyle(lineWidth: 10, lineCap: .round)
                )
                .frame(width: size, height: size)
                .rotationEffect(Angle(degrees: 90))
                .rotation3DEffect(Angle(degrees: 180), axis: (x: 1, y: 0, z: 0))
                .shadow(color: Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)).opacity(0.3), radius: 3, x: 0, y: 3)
            if showText {
                Text(displayText)
                        .font(.subheadline)
                        .fontWeight(.bold)
            }
            
        }
    }
    
    private var displayText: String {
        let num = percentage * 100.0
        return "\(String(num))%"
    }
}

struct RingView_Previews: PreviewProvider {
    static var previews: some View {
        RingView()
    }
}
