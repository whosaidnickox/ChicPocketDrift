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
            LoopingBackgroundView()
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Spacer()
                    
                    NavigationLink {
                        SettingsView()
                    } label: {
                        Image("shestirionochka")
                            .offset(x: appearAnims ? 0 : UIScreen.main.bounds.width)
                            .animation(Animation.bouncy.delay(0.25),
                                       value: appearAnims)
                    }

                 
                }
                .padding()
              
                Spacer()
            }
            
            VStack {
                
                Image("sloqilisb")
                   
                    .offset(y: appearAnims ? 0 : -UIScreen.main.bounds.height)
                    .animation(Animation.linear.delay(0.15),
                               value: appearAnims)
                Spacer()
                
                NavigationLink {
                    DriftimseaVmeste()
                } label: {
                    Image("stiwz")
                        .offset(y: appearAnims ? 0 : UIScreen.main.bounds.width)
                        .animation(Animation.bouncy.delay(0.2),
                                   value: appearAnims)
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
