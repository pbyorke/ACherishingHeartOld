//
//  MainView.swift
//  Shared
//
//  Created by Pete Yorke on 4/30/21.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject var authenticator: Authenticator
        
    var body: some View {
        NavigationView {
            VStack {
                MainPictureView()
                MainTitleView()
                MainMenuView()
                Spacer()
                MainMenuBarView()
            } // VStack
            .edgesIgnoringSafeArea(.all)
        } // NavigationView
    } // body
} // MainView

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
