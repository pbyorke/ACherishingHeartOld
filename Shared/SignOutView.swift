//
//  SignOutView.swift
//  ACherishingHeart
//
//  Created by Peter Yorke on 5/1/21.
//

import SwiftUI
import Firebase

struct SignOutView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("Tap button to sign out")
//            SignInWithAppleButton()
//                .frame(width: 280, height: 45)
//                Button
//                .onTapGesture {
//                    if ground { do{try Auth.auth().signOut()}catch{} }
//                    presentationMode.wrappedValue.dismiss()
//                } // onTapGesture
            Button(action: {
                do{
//                    try Auth.auth().signOut()
                    presentationMode.wrappedValue.dismiss()
                }
//                catch{}
            }) {
                HStack {
                    Text("Sign Out")
                }
            }
            .frame(width: 280, height: 45)
        } // VStack
    }
}

struct SignOutView_Previews: PreviewProvider {
    static var previews: some View {
        SignOutView()
    }
}
