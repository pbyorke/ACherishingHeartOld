//
//  MainMenuBarView.swift
//  ACherishingHeart
//
//  Created by Pete Yorke on 4/30/21.
//

import SwiftUI

struct MainMenuBarView: View {
    
    @State var showSignInForm = false
    
    var body: some View {
        HStack(spacing: 10) {
            Spacer()
            Button(action: {
                showSignInForm.toggle()
            }) {
                HStack {
                    Text("Sign In With Apple")
                }
            }
        } // HStack
        .sheet(isPresented: $showSignInForm) {
            SignInWithAppleView()
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
