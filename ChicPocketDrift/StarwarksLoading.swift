//
//  StarwarksLoading.swift
//  ChicPocketDrift
//
//  Created by Nicolae Chivriga on 09/04/2025.
//

import SwiftUI



struct ShimmeringText: View {
    @State private var gradientOffset: CGFloat = -200
    
    var body: some View {
        Text("Loading...")
            .font(.system(size: 40, weight: .bold))
            .foregroundColor(Color.gray.opacity(0.5))
            .overlay(
                // Shimmer effect using a moving gradient mask
                LinearGradient(gradient: Gradient(colors: [Color.gray.opacity(0.5), Color.white, Color.gray.opacity(0.5)]),
                               startPoint: .leading,
                               endPoint: .trailing)
                    .frame(width: 200, height: 50)
                    .offset(x: gradientOffset)
                    .blendMode(.screen)
                    .mask(
                        Text("Loading...")
                            .font(.system(size: 40, weight: .bold))
                    )
            )
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    // Animate the gradient offset from left to right repeatedly
                    withAnimation(Animation.linear(duration: 2.0).repeatForever(autoreverses: false)) {
                        gradientOffset = 200
                    }
                }
            }
    }
}


