//
//  ViberaemIgruView.swift
//  ChicPocketDrift
//
//  Created by Nicolae Chivriga on 10/04/2025.
//

import SwiftUI


struct ViberaemIgruView: View {
    var body: some View {
        ZStack {
            Image("backgroundskiqs")
                .resizable()
                .ignoresSafeArea()
            
            HStack {
                NavigationLink {
                    DriftimseaVmeste()
                } label: {
                    Image("dregs")
                }

                NavigationLink {
                    CagheIgr()
                } label: {
                    Image("caghe")
                }

            }
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: NazatiKnop())
    }
}
