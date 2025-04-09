//
//  LoopingSki.swift
//  ChicPocketDrift
//
//  Created by Nicolae Chivriga on 09/04/2025.
//

import SwiftUI

struct LoopingBackgroundView: View {
    @State private var offset: CGFloat = 0

    let imageName = "backgroundskiqs"
    let speed: Double = 10 // Lower = faster

    var body: some View {
        GeometryReader { geo in
            HStack(spacing: 0) {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: geo.size.width, height: geo.size.height)
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: geo.size.width, height: geo.size.height)
            }
            .offset(x: -offset)
            .onAppear {
                withAnimation(Animation.linear(duration: speed).repeatForever(autoreverses: false)) {
                    offset = geo.size.width
                }
            }
        }
        .ignoresSafeArea()
    }
}
