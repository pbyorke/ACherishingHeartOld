//
//  MainPictureView.swift
//  ACherishingHeart
//
//  Created by Pete Yorke on 4/30/21.
//

import SwiftUI

struct MainPictureView: View {
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                VStack {
                    Image("launchimage")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width * 0.75,
                               height: UIScreen.main.bounds.width * 0.75)
                        .padding(.leading, 20)
                        .padding(.top, 40)
                    Text("Karyn Lynn Grant").font(.title)
                        .padding(.leading, 20)
                        .padding(.bottom, 0)
                } // VStack
                Spacer()
            } // HStack
        } // VStack
    } // body
}

struct MainPictureView_Previews: PreviewProvider {
    static var previews: some View {
        MainPictureView()
    }
}
