//
//  MainMenuView.swift
//  ChicPocketDrift
//
//  Created by Nicolae Chivriga on 09/04/2025.
//

import SwiftUI


struct MainMenuView: View {
    @State var appearAnims: Bool = false
    var body: some View {
        ZStack {
Image("backgroundskiqs")
                .resizable()                .ignoresSafeArea()
            
           
            
            VStack {
                

                Image("sloqilisb")
                   
                    .offset(y: appearAnims ? 0 : -UIScreen.main.bounds.height)
                    .animation(Animation.linear.delay(0.15),
                               value: appearAnims)
                Spacer()
                
                HStack {
                    NavigationLink {
                        RateUsView()
                    } label: {
                        Image("rtus")
                    }
                    .offset(x: appearAnims ? 0 : UIScreen.main.bounds.width)
                    .animation(Animation.bouncy.delay(0.23),
                               value: appearAnims)

                   
                    
                    NavigationLink {
                        ViberaemIgruView()
                    } label: {
                        Image("stiwz")
                            .offset(y: appearAnims ? 0 : UIScreen.main.bounds.width)
                            .animation(Animation.bouncy.delay(0.2),
                                       value: appearAnims)
                    }
                    
                    NavigationLink {
                        SettingsView()
                    } label: {
                        Image("shestirionochka")
                            .offset(x: appearAnims ? 0 : UIScreen.main.bounds.width)
                            .animation(Animation.bouncy.delay(0.25),
                                       value: appearAnims)
                    }
                }

             
            }
            .padding()
        }
        .navigationBarBackButtonHidden()
        .onAppear() { appearAnims = true }
    }
}
extension View {
    func achipocketadpat() -> some View {
        self.modifier(ChicPoketAdpt())
    }
}
