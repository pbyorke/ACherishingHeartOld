//
//  MainMenuView.swift
//  ACherishingHeart
//
//  Created by Pete Yorke on 4/30/21.
//

import SwiftUI

struct MainMenuView: View {
    
    var body: some View {
        Form {
            HStack {
                VStack(alignment: .leading) {
                    NavigationLink(
                        destination: MusicMenuView()) {
                        Text("Music")
                    }
                    NavigationLink(
                        destination: MasterMenuView()) {
                        Text("Master")
                    }
                } // VStack
                .font(.title2)
                Spacer()
            } // HStack
        } // Form
        .padding(.leading, 20)
        .padding(.trailing, 20)
        .padding(.bottom, 40)
    } // body
    
}

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
    }
}
