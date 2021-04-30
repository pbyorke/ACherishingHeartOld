//
//  SignInWithAppleButton.swift
//  ACherishingHeart
//
//  Created by Pete Yorke on 4/30/21.
//

import Foundation
import SwiftUI
import AuthenticationServices

struct SignInWithAppleButton: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ASAuthorizationAppleIDButton {
        return ASAuthorizationAppleIDButton(type: .signIn, style: .black)
    }
    
    func updateUIView(_ uiView: ASAuthorizationAppleIDButton, context: Context) { }
    
}
