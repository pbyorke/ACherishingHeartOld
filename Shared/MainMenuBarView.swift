//
//  MainMenuBarView.swift
//  ACherishingHeart
//
//  Created by Pete Yorke on 4/30/21.
//

import SwiftUI

struct MainMenuBarView: View {
    
    @State var showSignInForm = false
    @State var showSignOutForm = false
    @State var showAccountForm = false
    
    var body: some View {
        HStack(spacing: 10) {
            Spacer()
            Button(action: {
                showAccountForm.toggle()
            }) {
                HStack {
                    Text("Account")
                }
            }
            Button(action: {
                showSignOutForm.toggle()
            }) {
                HStack {
                    Text("Sign Out")
                }
            }
            Button(action: {
                showSignInForm.toggle()
            }) {
                HStack {
                    Text("Sign In")
                }
            }
        } // HStack
        .sheet(isPresented: $showSignInForm) {
            SignInWithAppleView()
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
