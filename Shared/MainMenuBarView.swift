//
//  MainMenuBarView.swift
//  ACherishingHeart
//
//  Created by Pete Yorke on 4/30/21.
//

import SwiftUI

struct MainMenuBarView: View {
    
    @EnvironmentObject var authenticator: Authenticator
        
    @State var showSignInForm = false
    @State var showSignOutForm = false
    @State var showAccountForm = false
    
    var body: some View {
        HStack(spacing: 10) {
            Spacer()
            if authenticator.isSignedIn {
                Button(action: {
                    showAccountForm.toggle()
                }) {
                    HStack {
                        Text("Account")
                    }
                }
            }
            if authenticator.isSignedIn {
                Button(action: {
                    showSignOutForm.toggle()
                }) {
                    HStack {
                        Text("Sign Out")
                    }
                }
            }
            if !authenticator.isSignedIn {
                Button(action: {
                    showSignInForm.toggle()
                }) {
                    HStack {
                        Text("Sign In")
                    }
                }
            }
        } // HStack
        .sheet(isPresented: $showSignInForm) {
//            SignInWithAppleView()
            Text("would have gone to SignInWithAppleView")
        }
        .sheet(isPresented: $showSignOutForm) {
            SignOutView()
        }
        .sheet(isPresented: $showAccountForm) {
            AccountView()
        }
        .font(.footnote)
        .foregroundColor(.blue)
        .padding(.bottom,  28)
        .padding(.trailing, 20)
    } // body
}

#if DEBUG

struct MainMenuBarView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuBarView()
    }
}

#endif
