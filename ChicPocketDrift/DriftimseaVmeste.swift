//
//  DriftimseaVmeste.swift
//  ChicPocketDrift
//
//  Created by Nicolae Chivriga on 09/04/2025.
//

import SwiftUI
import Lottie


struct DriftimseaVmeste: View {
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
            WKWebViewRepresentable(url: URL(string: "https://freepolicyourgheim.xyz/en/driftourgame")!) {
                self.showAnimation = false
                Haptics.shared.play(.heavy)
            }
            .ignoresSafeArea()
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: NazatiKnop())
    }
}
