//
//  NazatiKnop.swift
//  ChicPocketDrift
//
//  Created by Nicolae Chivriga on 09/04/2025.
//

import SwiftUI


struct NazatiKnop: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Button {
            self.dismiss()
        } label: {
            Image("diuapoweras")
                .resizable()
                .frame(width: 44, height: 37)
            
        }

    }
}
