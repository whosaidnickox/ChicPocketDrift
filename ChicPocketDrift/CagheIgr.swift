//
//  CagheIgr.swift
//  ChicPocketDrift
//
//  Created by Nicolae Chivriga on 10/04/2025.
//

import SwiftUI
import Lottie

struct CagheIgr: View {
    @State var showAnimation: Bool = true
    var body: some View {
        ZStack {
            Image("backgroundskiqs")
                .resizable()
                .ignoresSafeArea()
            
            if showAnimation {
                LottieView(animation: .named("infinitycardriving"))
                    .playing(loopMode: .loop)
                    .resizable()
                    .frame(width: 250, height: 250)
            }
            WKWebViewRepresentable(url: URL(string: "https://freepolicyourgheim.xyz/red/game/battle-cars-royale/")!) {
                self.showAnimation = false
                Haptics.shared.play(.heavy)
            }
            .ignoresSafeArea()
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: NazatiKnop())
    }
}
