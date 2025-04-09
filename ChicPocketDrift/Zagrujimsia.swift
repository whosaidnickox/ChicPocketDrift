//
//  Zagrujimsia.swift
//  ChicPocketDrift
//
//  Created by Nicolae Chivriga on 09/04/2025.
//

import SwiftUI
import Lottie


struct Zagrujimsia: View {
    @State var goiuw2sm: Bool = false
    var body: some View {
        ZStack {
            Image("backgroundskiqs")
                .resizable()
                .ignoresSafeArea()
            
            NavigationLink("", destination: MainMenuView(), isActive: $goiuw2sm)
            VStack {
                Image("sloqilisb")
                    .resizable()
                    .scaledToFit()
                
                LottieView(animation: .named("infinitycardriving"))
                    .playing(loopMode: .loop)
                    .resizable()
                    .frame(width: 125, height: 125)
                
                ShimmeringText()
            }
        }
        .achipocketadpat()
        .onAppear() {
            DispatchQueue.main.asyncAfter(deadline: .now() + 4.8484) {
                Haptics.shared.play(.soft)
                self.goiuw2sm = true
            }
        }
    }
}
