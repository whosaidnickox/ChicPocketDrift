//
//  RateUsView.swift
//  ChicPocketDrift
//
//  Created by Nicolae Chivriga on 10/04/2025.
//

import SwiftUI
import StoreKit


struct RateUsView: View {
    @Environment(\.requestReview) var requestReview
    var body: some View {
        ZStack {
            Image("backgroundskiqs")
                            .resizable()               .ignoresSafeArea()
            
            Image("ratcoint")
                .overlay {
                    VStack {
                        Button {
                            requestReview()
                        } label: {
                            Image("rts")
                              
                        }
                        .offset(y: 70)
                       
                    }
                }
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: NazatiKnop())
    }
}
