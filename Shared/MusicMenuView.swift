//
//  MusicMenuView.swift
//  ACherishingHeart
//
//  Created by Pete Yorke on 4/30/21.
//

import SwiftUI

struct MusicMenuView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Music")
            } // VStack
            .navigationBarTitle("Music")
        } // NavigaitonView
    } // body
}

struct MusicMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MusicMenuView()
    }
}
