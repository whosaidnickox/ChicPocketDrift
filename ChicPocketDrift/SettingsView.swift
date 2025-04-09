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
                    VStack {
                        Button {
                            sendEmail(to: "lecvinko.matwei@icloud.com", subject: "Support Request", body: "Hi, I need help with...")
                        } label: {
                            Image("contars")
                        }
                        
                        Button {
                            shareApp(link: "https://apps.apple.com/app/id6744378400")
                        } label: {
                            Image("shrs")
                        }
                        
                        
                    }
                    
                    
                }
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: NazatiKnop())
    }
    
    func sendEmail(to recipient: String, subject: String = "", body: String = "") {
        let subjectEncoded = subject.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        let bodyEncoded = body.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        
        if let url = URL(string: "mailto:\(recipient)?subject=\(subjectEncoded)&body=\(bodyEncoded)") {
            UIApplication.shared.open(url)
        }
    }
    
    func shareApp(link: String) {
        guard let url = URL(string: link) else { return }

        let activityVC = UIActivityViewController(activityItems: [url], applicationActivities: nil)

        // Present the view controller
        if let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let root = scene.windows.first?.rootViewController {
            root.present(activityVC, animated: true, completion: nil)
        }
    }
}
