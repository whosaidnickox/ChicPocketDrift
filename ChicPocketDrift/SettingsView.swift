//
//  SettingsView.swift
//  ChicPocketDrift
//
//  Created by Nicolae Chivriga on 09/04/2025.
//


import SwiftUI
import StoreKit

struct SettingsView: View {
    @Environment(\.requestReview) var requestPleaseReviewUs
    var body: some View {
        ZStack{
            Image("backgroundskiqs")
                .resizable()
                .ignoresSafeArea()
            
            Image("setingsai")
                .resizable()
                .scaledToFit()
                .overlay {
                    Button {
                        requestPleaseReviewUs()
                    } label: {
                        Image("swisah")
                            .overlay {
                                 Text("RATE US")
                                    .font(.system(size: 20, weight: .semibold, design: .monospaced))
                                    .foregroundStyle(.white)
                            }
                    }

                    
                }
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: NazatiKnop())
    }
}
